# Mesures : vhdl_cheat

- Fichier : `VHDL/vhdl_cheat.tex` · librairie : `librairie` · thème : `vhdl`
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
| ctl | #6A51B8 | 100 | F126 | 2 |
| ex | #E16032 | 129 | F2DB | 7 |
| io | #218C5D | 103 | F0C3 | 1 |
| lib | #C47208 | 126 | F02D | 4 |
| syn | #E14775 | 122 | F121 | 4 |
| typ | #1A7F99 | 100 | F1B2 | 3 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 6, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · le langage

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | structure | Bibliothèques (lib) · Entité : l'interface (syn) · Architecture : le contenu (syn) · Paquet et fonction (lib) | 36 | 4 | 4 | 2 (lib→syn→lib) |
| 2 | types · littéraux | std\_logic : 9 valeurs (typ) · Types (typ) · Littéraux et agrégats (syn) · Conversions (numeric\_std) (lib) | 18 | 13 | 1 | 3 (typ→syn→lib) |
| 3 | opérateurs · instructions | Opérateurs (syn) · Instructions concurrentes (ctl) · Process : le séquentiel (ctl) · Attributs (typ) | 25 | 13 | 2 | 3 (syn→ctl→typ) |

### Page 2 — verso · conception et simulation

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | circuits | Logique combinatoire (ex) · Registre N bits (ex) · Compteur (ex) · Décalage et détection de front (ex) | 45 | 0 | 2 | 1 (ex) |
| 2 | hiérarchie · FSM | Instancier un composant (lib) · Machine à états (Moore) (ex) · RAM synchrone (ex) | 43 | 0 | 1 | 2 (lib→ex) |
| 3 | simulation | Testbench (io) · Pièges (ex) | 31 | 12 | 0 | 2 (io→ex) |

- Blocs : 21 · schémas : 2 · pièges : 2 · sous-titres : 4

## Compilation

- Espace libre par colonne (mm) : 1:7.2, 2:13.2, 3:17.7, 4:1.6, 5:13.6, 6:18.4
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 23.5, médiane 41.4, max 117.2
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 14% · couleur 44% | 14% · couleur 38% | 13% · couleur 44% |
| 2 | 12% · couleur 44% | 13% · couleur 43% | 12% · couleur 36% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
