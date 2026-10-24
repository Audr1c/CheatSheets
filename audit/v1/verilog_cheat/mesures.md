# Mesures : verilog_cheat

- Fichier : `Verilog/verilog_cheat.tex` · thème : `verilog`
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
| agg | #C47208 | 126 | 2 |
| ctl | #6A51B8 | 100 | 3 |
| hw | #E16032 | 129 | 5 |
| syn | #E14775 | 122 | 2 |
| tb | #218C5D | 103 | 3 |
| typ | #1A7F99 | 100 | 2 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/tb (Δ3), tb/syn (Δ19), syn/agg (Δ4), agg/hw (Δ3).

## Police

- Tailles utilisées (pt) : 4.7, 4.8, 5.8, 6, 6.55, 6.6, 6.75, 6.95, 7, 7.4, 12
- Sous 6 pt : 4.7, 4.8, 5.8 (acceptable pour numéros, badges ; pas pour du contenu)
- Texte courant en police à chasse fixe (Hurmit) : même police que le code, pas de contraste typographique entre explications et code.

## Structure

### Page 1 — recto · le langage

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Opérateurs (syn) · Littéraux (syn) · Types Verilog (typ) | 5 | 38 | 1 | 2 (syn→typ) |
| 2 | — | Types SystemVerilog (typ) · Types utilisateur et agrégés (agg) | 32 | 9 | 6 | 2 (typ→agg) |
| 3 | — | Structures de contrôle (ctl) · Délais et évènements (ctl) · Tâches et fonctions (ctl) | 51 | 0 | 3 | 1 (ctl) |

### Page 2 — verso · conception et simulation ($\to$ vérif : fiche UVM)

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Structure d'un module (hw) · Bloquant vs non bloquant (hw) · Interfaces (tb) | 47 | 2 | 1 | 2 (hw→tb) |
| 2 | — | Circuit combinatoire (hw) · Élément séquentiel (hw) · Machine à états (FSM) (hw) | 38 | 0 | 8 | 1 (hw) |
| 3 | — | Testbench (tb) · Processus parallèles (tb) · Files et tableaux associatifs (agg) | 39 | 6 | 1 | 2 (tb→agg) |

- Blocs : 17 · schémas : 1 · pièges : 2 · sous-titres : 14

## Compilation

- Espace libre par colonne (mm) : 1:11.4, 2:1.5, 3:4.5, 4:3.5, 5:2.8, 6:2.9
- Overfull hbox : 0
- Glyphes manquants : aucun
- Hauteur des blocs (mm) : min 31.3, médiane 58, max 105.4

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 10% · couleur 8% | 11% · couleur 18% | 10% · couleur 25% |
| 2 | 10% · couleur 23% | 10% · couleur 24% | 11% · couleur 19% |

## Alertes automatiques

- Contraste limite : code : commentaires (mk-grey) = 3.9:1 (seuil 4.5).
- Contraste limite : code : chaînes (mk-yellow) = 3.6:1 (seuil 4.5).
- Catégories indiscernables en N&B : ctl/typ (Δ0), typ/tb (Δ3), tb/syn (Δ19), syn/agg (Δ4), agg/hw (Δ3). La catégorie ne doit pas reposer que sur la couleur.
- Corps du texte à 6.95 pt : petit pour une lecture imprimée (viser ≥ 7 pt).
- Aucune colonne n'a de titre : le regard n'a pas de repère de niveau colonne (cf. branches de la fiche Git).
- Page 1 col. 1 : 8% d'encre colorée seulement, colonne terne et uniforme.

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
