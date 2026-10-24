# Fiches résumé

Fiches pratiques imprimables (A4 paysage recto-verso, 3 colonnes par page) en LaTeX :
C, C++, Git, Python (base et avancé), Verilog, SystemVerilog/UVM, VHDL.

## Compiler

Prérequis : XeLaTeX (TeX Live ou MiKTeX), GNU make, polices
[Hurmit Nerd Font](https://www.nerdfonts.com/font-downloads) et
[IBM Plex Sans](https://github.com/IBM/plex) installées.

```sh
make              # aide : liste des commandes et des dossiers
make all          # toutes les fiches
make Git          # les fiches d'un dossier
make liste        # les fiches trouvées
make clean        # fichiers auxiliaires (clean-Git : un seul dossier)
make mrproper     # aussi les PDF
```

Le Makefile fonctionne sous Linux et sous Windows (`sh` ou `cmd.exe`). On peut aussi lancer
`make` dans un dossier de fiche, ou `xelatex <fiche>.tex` depuis ce dossier. Les PDF ne sont
pas versionnés : ils se régénèrent avec `make all`.

## Organisation : le style est séparé du contenu

```
librairie/
  fiche.sty            commun à toutes les fiches : polices, tailles, couleurs, barre,
                       encadrés, tableaux mesurés, colonnes nommées, espacements
  theme-<nom>.tex      propre à une fiche : catégories et icônes, couleurs des colonnes,
                       barre d'en-tête, légende, schémas particuliers
<Dossier>/
  <sujet>.tex          le contenu : \usepackage[<nom>]{../librairie/fiche} puis \input{langage}
  langage.tex          mots-clés colorés (\lstdefinelanguage{CODE})
audit/                 audits de lisibilité (SYNTHESE.md, un rapport par fiche)
```

- Changer la police, la barre du haut ou un espacement de **toutes** les fiches :
  `librairie/fiche.sty`.
- Changer l'apparence d'**une** fiche : son `librairie/theme-<nom>.tex`.
- Nouvelle fiche : un dossier `<Dossier>/<sujet>.tex` ; le Makefile la trouve tout seul.

La librairie (version 2.1) met en page proprement par construction (rythme vertical unique, tableaux
mesurés, code qui ne déborde pas, collisions signalées). Après compilation,
`grep "\[fiche\]" <fiche>.log` donne l'espace libre de chaque colonne (négatif = déborde) et
les collisions éventuelles.
