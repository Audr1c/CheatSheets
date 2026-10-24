# Mesures : vhdl_cheat

- Fichier : `VHDL/vhdl_cheat.tex` · thème : `vhdl`
- Pages : 2

## Couleurs du texte

Contraste sur fond blanc (WCAG : ≥ 4,5 texte fin, ≥ 3 texte gras) et gris obtenu en N&B.

| rôle | couleur | contraste | gris N&B | verdict |
|---|---|---|---|---|
| texte courant | `ink` | 15.2:1 | 38 | ok |
| \note (remarque) | `ink!68` | 5.3:1 | 108 | ok |
| tab3 : 3e colonne | `ink!72` | 6.1:1 | 99 | ok |
| code : mots-clés [1] | `mk-pink` | 3.9:1 | 122 | ok |
| code : types [2] | `mk-cyan` | 4.6:1 | 100 | ok |
| code : intégrés [3] | `mk-green` | 4.2:1 | 103 | ok |
| code : classe [4] | `code-kw4` | 3.5:1 | 129 | ok |
| code : commentaires | `mk-grey` | 3.9:1 | 129 | limite |
| code : chaînes | `mk-yellow` | 3.6:1 | 126 | limite |
| code : «à remplir» | `mk-purple` | 6.0:1 | 100 | ok |
| numéros de ligne | `gutter` | 2.2:1 | 176 | insuffisant |
| \piege (warning) | `mk-orange` | 3.5:1 | 129 | ok |

## Catégories

| catégorie | couleur | gris N&B | blocs |
|---|---|---|---|
| ctl | #6A51B8 | 100 | 2 |
| ex | #E16032 | 129 | 8 |
| io | #218C5D | 103 | 2 |
| lib | #C47208 | 126 | 5 |
| syn | #E14775 | 122 | 4 |
| typ | #1A7F99 | 100 | 3 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3).

## Police

- Tailles utilisées (pt) : 4.7, 4.8, 6.55, 6.6, 6.75, 6.95, 7, 7.4, 12
- Sous 6 pt : 4.7, 4.8 (acceptable pour numéros, badges ; pas pour du contenu)
- Texte courant en police à chasse fixe (Hurmit) : même police que le code, pas de contraste typographique entre explications et code.

## Structure

### Page 1 — recto · le langage

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Bibliothèques (lib) · Entité : l'interface (syn) · Architecture : le contenu (syn) · Paquet et fonction (lib) | 36 | 4 | 4 | 2 (lib→syn→lib) |
| 2 | — | std\_logic : 9 valeurs (typ) · Types (typ) · Conversions (numeric\_std) (lib) · Attributs (typ) | 11 | 19 | 3 | 2 (typ→lib→typ) |
| 3 | — | Opérateurs (syn) · Instructions concurrentes (ctl) · Process : le séquentiel (ctl) · Littéraux et agrégats (syn) | 32 | 7 | 2 | 2 (syn→ctl→syn) |

### Page 2 — verso · conception et simulation

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Logique combinatoire (ex) · Registre N bits (ex) · Compteur (ex) · Décalage et détection de front (ex) | 43 | 0 | 2 | 1 (ex) |
| 2 | — | Instancier un composant (lib) · Additionneur N bits (generate) (lib) · Machine à états (Moore) (ex) · Trois états (ex) · Afficher des valeurs (io) | 44 | 0 | 1 | 3 (lib→ex→io) |
| 3 | — | Testbench (io) · RAM synchrone (ex) · Pièges (ex) | 34 | 11 | 1 | 2 (io→ex) |

- Blocs : 24 · schémas : 1 · pièges : 2 · sous-titres : 0

## Compilation

- Espace libre par colonne (mm) : 1:5.8, 2:4.8, 3:4.9, 4:11.2, 5:4.8, 6:4.3
- Overfull hbox : 0
- Glyphes manquants : aucun
- Hauteur des blocs (mm) : min 11.1, médiane 41, max 81.9

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 11% · couleur 28% | 11% · couleur 21% | 10% · couleur 25% |
| 2 | 9% · couleur 24% | 11% · couleur 25% | 10% · couleur 26% |

## Alertes automatiques

- Contraste limite : code : commentaires (mk-grey) = 3.9:1 (seuil 4.5).
- Contraste limite : code : chaînes (mk-yellow) = 3.6:1 (seuil 4.5).
- Catégories indiscernables en N&B : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3). La catégorie ne doit pas reposer que sur la couleur.
- Corps du texte à 6.95 pt : petit pour une lecture imprimée (viser ≥ 7 pt).
- Page 2 col. 2 : 3 catégories mélangées, pas d'identité de colonne.
- Aucune colonne n'a de titre : le regard n'a pas de repère de niveau colonne (cf. branches de la fiche Git).

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
