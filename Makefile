# Compile les fiches pratiques (Linux ou Windows, avec GNU make + XeLaTeX)
#   make              affiche l'aide
#   make all          toutes les fiches
#   make Git          les fiches d'un dossier (C Cpp Git python UVM Verilog VHDL ...)
#   make liste        affiche les fiches trouvées
#   make clean        supprime les fichiers auxiliaires (.aux .log .out .tab .listing) · clean-Git : un dossier
#   make mrproper     supprime aussi les PDF des fiches
# Une fiche = tout dossier/*.tex contenant \documentclass ; les dossiers de IGNORES
# ne sont pas compilés. Chaque PDF dépend de sa fiche, de son langage*.tex et de la
# librairie : modifier librairie/ recompile toutes les fiches.

ENGINE  = xelatex
FLAGS   = -interaction=nonstopmode -halt-on-error
IGNORES = librairie

LIB       = $(filter %.sty %.tex,$(wildcard librairie/*))
CANDIDATS = $(filter-out $(addsuffix /%,$(IGNORES)),$(wildcard */*.tex))
FICHES    = $(foreach f,$(CANDIDATS),$(if $(findstring \documentclass,$(file <$f)),$f))
PDFS      = $(FICHES:.tex=.pdf)
DOSSIERS  = $(sort $(patsubst %/,%,$(dir $(FICHES))))
auxiliaires = $(foreach e,aux log out tab listing,$(1:.tex=.$e))

# Shell réellement utilisé : cmd.exe garde les guillemets de echo, sh les retire
ifeq ($(shell echo "x"),"x")
  RM = del /Q 2>nul
  chemin = $(subst /,\,$1)
else
  RM = rm -f
  chemin = $1
endif

# $(info) plutôt que echo : même affichage sous sh et cmd.exe
vide :=
aide:
	$(info Fiches pratiques - compilation avec $(ENGINE))
	$(info $(vide)  make all          compile toutes les fiches)
	$(info $(vide)  make <dossier>    compile les fiches d'un dossier : $(DOSSIERS))
	$(info $(vide)  make liste        affiche les fiches trouvees)
	$(info $(vide)  make clean        supprime les fichiers auxiliaires (.aux .log .out .tab .listing))
	$(info $(vide)  make clean-<dossier>  idem pour un seul dossier)
	$(info $(vide)  make mrproper     supprime aussi les PDF des fiches)
	$(info Style commun : librairie/fiche.sty - theme d'une fiche : librairie/theme-<nom>.tex)
	@cd .

all: $(PDFS)

.SECONDEXPANSION:
%.pdf: %.tex $$(wildcard $$(dir $$@)langage*.tex) $(LIB)
	cd $(patsubst %/,%,$(dir $<)) && $(ENGINE) $(FLAGS) $(notdir $<)

$(DOSSIERS): $$(filter $$@/%,$(PDFS))

liste:
	@echo $(FICHES)

clean:
	-$(RM) $(call chemin,$(call auxiliaires,$(FICHES)))

clean-%:
	-$(RM) $(call chemin,$(call auxiliaires,$(filter $*/%,$(FICHES))))

mrproper: clean
	-$(RM) $(call chemin,$(PDFS))

.PHONY: aide all liste clean mrproper $(DOSSIERS)
