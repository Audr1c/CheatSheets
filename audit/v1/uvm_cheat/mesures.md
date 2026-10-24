# Mesures : uvm_cheat

- Fichier : `UVM/uvm_cheat.tex` · thème : `uvm`
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
| cov | #C47208 | 126 | 2 |
| oop | #6A51B8 | 100 | 1 |
| rnd | #E14775 | 122 | 5 |
| sva | #E16032 | 129 | 3 |
| uvm | #1A7F99 | 100 | 4 |

Catégories confondues en N&B (écart de gris < 25) : oop/uvm (Δ0), uvm/rnd (Δ22), rnd/cov (Δ4), cov/sva (Δ3).

## Police

- Tailles utilisées (pt) : 4.7, 4.8, 5, 5.4, 6.55, 6.6, 6.75, 6.95, 7, 7.4, 12
- Sous 6 pt : 4.7, 4.8, 5, 5.4 (acceptable pour numéros, badges ; pas pour du contenu)
- Texte courant en police à chasse fixe (Hurmit) : même police que le code, pas de contraste typographique entre explications et code.

## Structure

### Page 1 — recto · classes, aléatoire, couverture, assertions

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Classes et objets (oop) · Métriques de couverture (cov) | 38 | 6 | 3 | 2 (oop→cov) |
| 2 | — | Variables aléatoires et contraintes (rnd) · Tirage (rnd) | 35 | 13 | 1 | 1 (rnd) |
| 3 | — | Couverture fonctionnelle (cov) · Assertions (SVA) (sva) | 42 | 9 | 2 | 2 (cov→sva) |

### Page 2 — verso · architecture, séquences, composants

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Architecture d'un banc UVM (uvm) · Phases (uvm) · Factory, config\_db, rapports (uvm) | 20 | 11 | 4 | 1 (uvm) |
| 2 | — | Transaction : sequence item (rnd) · Séquence (rnd) · Driver (rnd) | 50 | 0 | 2 | 1 (rnd) |
| 3 | — | Monitor (sva) · Scoreboard (sva) · Assemblage : agent, env, top (uvm) | 52 | 0 | 1 | 2 (sva→uvm) |

- Blocs : 15 · schémas : 1 · pièges : 1 · sous-titres : 11

## Compilation

- Espace libre par colonne (mm) : 1:7.5, 2:4.2, 3:1.5, 4:1, 5:2, 6:2.6
- Overfull hbox : 0
- Glyphes manquants : aucun
- Hauteur des blocs (mm) : min 35.6, médiane 64.6, max 129.5

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 12% · couleur 22% | 11% · couleur 16% | 12% · couleur 24% |
| 2 | 13% · couleur 17% | 11% · couleur 26% | 12% · couleur 22% |

## Alertes automatiques

- Contraste limite : code : commentaires (mk-grey) = 3.9:1 (seuil 4.5).
- Contraste limite : code : chaînes (mk-yellow) = 3.6:1 (seuil 4.5).
- Catégories indiscernables en N&B : oop/uvm (Δ0), uvm/rnd (Δ22), rnd/cov (Δ4), cov/sva (Δ3). La catégorie ne doit pas reposer que sur la couleur.
- Corps du texte à 6.95 pt : petit pour une lecture imprimée (viser ≥ 7 pt).
- Aucune colonne n'a de titre : le regard n'a pas de repère de niveau colonne (cf. branches de la fiche Git).

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
