# Mesures : python_cheat

- Fichier : `python/python_cheat.tex` · librairie : `librairie` · thème : `python`
- Pages : 2

## Couleurs du texte

Contraste sur fond blanc (WCAG : ≥ 4,5 texte fin, ≥ 3 texte gras) et gris obtenu en N&B.

| rôle | couleur | contraste | gris N&B | verdict |
|---|---|---|---|---|
| texte courant | `ink` | 15.2:1 | 38 | ok |
| \note (remarque) | `note` | 7.4:1 | 86 | ok |
| tab3 : 3e colonne | `note` | 7.4:1 | 86 | ok |
| code : mots-clés [1] | `mk-pink` | 3.9:1 | 122 | ok |
| code : types [2] | `mk-cyan` | 4.6:1 | 100 | ok |
| code : intégrés [3] | `mk-green` | 4.2:1 | 103 | ok |
| code : classe [4] | `code-kw4` | 3.5:1 | 129 | ok |
| code : commentaires | `mk-grey` | 5.7:1 | 103 | ok |
| code : chaînes | `mk-string` | 5.1:1 | 104 | ok |
| code : «à remplir» | `mk-purple` | 6.0:1 | 100 | ok |
| \piege (warning) | `mk-orange` | 3.5:1 | 129 | ok |

## Catégories

| catégorie | couleur | gris N&B | icône | blocs |
|---|---|---|---|---|
| ctl | #6A51B8 | 100 | F126 | 4 |
| ex | #E16032 | 129 | F0EB | 4 |
| io | #218C5D | 103 | F120 | 5 |
| lib | #C47208 | 126 | F02D | 9 |
| syn | #E14775 | 122 | F121 | 1 |
| typ | #1A7F99 | 100 | F1B2 | 2 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · le langage

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | bases | Opérateurs (syn) · Types et nombres (typ) · Chaînes et f-strings (typ) · Console (io) | 30 | 8 | 2 | 3 (syn→typ→io) |
| 2 | contrôle · fonctions | Contrôle et boucles (ctl) · Fonctions (ctl) · Exceptions (ctl) · Modules et imports (lib) | 40 | 0 | 6 | 2 (ctl→lib) |
| 3 | collections · classes | Listes et tuples (lib) · Dictionnaires et ensembles (lib) · Compréhensions (lib) · Classes (ctl) | 42 | 0 | 2 | 2 (lib→ctl) |

### Page 2 — verso · scripts d'ingénieur

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | fichiers · scripts | Fichiers texte (io) · Chemins (pathlib) (io) · CSV et JSON (io) · Script : argparse, main (ex) | 44 | 0 | 2 | 2 (io→ex) |
| 2 | outils | Lancer des outils (subprocess) (lib) · Expressions régulières (re) (lib) · Exemple : rapports de synthèse en CSV (ex) · Modules utiles (lib) | 33 | 11 | 2 | 2 (lib→ex→lib) |
| 3 | numpy · tracés · pièges | numpy (lib) · matplotlib (lib) · Bits et registres (ex) · Environnement (io) · Pièges (ex) | 33 | 4 | 2 | 3 (lib→ex→io→ex) |

- Blocs : 25 · schémas : 1 · pièges : 2 · sous-titres : 1

## Compilation

- Espace libre par colonne (mm) : 1:9, 2:5.1, 3:18.5, 4:16.1, 5:8.4, 6:14.7
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 21, médiane 37, max 60.5
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 14% · couleur 30% | 13% · couleur 37% | 14% · couleur 34% |
| 2 | 15% · couleur 36% | 17% · couleur 40% | 15% · couleur 27% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
