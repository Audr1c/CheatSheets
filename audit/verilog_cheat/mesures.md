# Mesures : verilog_cheat

- Fichier : `Verilog/verilog_cheat.tex` · librairie : `librairie` · thème : `verilog`
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
| agg | #C47208 | 126 | F00A | 2 |
| ctl | #6A51B8 | 100 | F126 | 3 |
| hw | #E16032 | 129 | F2DB | 7 |
| syn | #E14775 | 122 | F121 | 2 |
| tb | #218C5D | 103 | F0C3 | 3 |
| typ | #1A7F99 | 100 | F1B2 | 2 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/tb (Δ3), tb/syn (Δ19), syn/agg (Δ4), agg/hw (Δ3).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 6, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · le langage

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | opérateurs · types | Opérateurs (syn) · Littéraux (syn) · Types Verilog (typ) | 9 | 35 | 1 | 2 (syn→typ) |
| 2 | types SystemVerilog | Types SystemVerilog (typ) · Énumérations et structures (agg) · Tableaux (agg) | 31 | 11 | 1 | 2 (typ→agg) |
| 3 | contrôle · temps | Structures de contrôle (ctl) · Délais et évènements (ctl) · Tâches et fonctions (ctl) | 51 | 0 | 3 | 1 (ctl) |

### Page 2 — verso · conception et simulation ($\to$ vérif : fiche UVM)

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | module | Structure d'un module (hw) · Bloquant vs non bloquant (hw) · Mémoire (RAM, ROM) (hw) · Règles de synthèse (hw) | 37 | 6 | 3 | 1 (hw) |
| 2 | circuits | Circuit combinatoire (hw) · Élément séquentiel (hw) · Machine à états (FSM) (hw) | 38 | 0 | 5 | 1 (hw) |
| 3 | simulation | Testbench (tb) · Interfaces (tb) · Processus parallèles (tb) | 45 | 2 | 1 | 1 (tb) |

- Blocs : 19 · schémas : 1 · pièges : 2 · sous-titres : 10

## Compilation

- Espace libre par colonne (mm) : 1:9, 2:3.3, 3:6.9, 4:1, 5:9.3, 6:7.6
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 20.2, médiane 46.7, max 88.4
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 12% · couleur 22% | 14% · couleur 30% | 12% · couleur 41% |
| 2 | 14% · couleur 41% | 12% · couleur 40% | 13% · couleur 32% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
