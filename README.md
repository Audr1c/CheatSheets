# Fiches résumé

Fiches pratiques imprimables (A4 paysage recto-verso, 3 colonnes par page) en LaTeX :
C, C++, Git, Python (base et avancé), Verilog, SystemVerilog/UVM, VHDL.

## Compiler

Prérequis : XeLaTeX (TeX Live ou MiKTeX), GNU make, police
[Hurmit Nerd Font](https://www.nerdfonts.com/font-downloads) installée.

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
  fiche.sty          commun à toutes les fiches : police, tailles, couleurs, barre d'en-tête,
                     encadrés, tableaux, colonnes, espacements
  theme-<nom>.tex    propre à une fiche : catégories, légende, couleurs et icône de la barre
<Dossier>/
  <sujet>_cheat.tex  le contenu : \usepackage[<nom>]{../librairie/fiche} puis \input{langage}
  langage.tex        mots-clés colorés (\lstdefinelanguage{CODE})
```

- Changer la police, la barre du haut ou un espacement de **toutes** les fiches : `librairie/fiche.sty`.
- Changer l'apparence d'**une** fiche : son `librairie/theme-<nom>.tex`.
- Nouvelle fiche : un dossier `<Dossier>/<sujet>_cheat.tex` ; le Makefile la trouve tout seul.

Après compilation, `grep "\[fiche\]" <fiche>.log` donne l'espace libre de chaque colonne
(négatif = déborde).

`Russe/` contient des fiches indépendantes de la librairie, non compilées par le Makefile
(leurs PDF sont donc versionnés).
