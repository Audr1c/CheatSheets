# Mesures : uvm_cheat

- Fichier : `UVM/uvm_cheat.tex` · librairie : `librairie` · thème : `uvm`
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
| cov | #C47208 | 126 | F200 | 2 |
| obs | #218C5D | 103 | F06E | 2 |
| oop | #6A51B8 | 100 | F0E8 | 1 |
| rnd | #E14775 | 122 | F074 | 5 |
| sva | #E16032 | 129 | F058 | 1 |
| uvm | #1A7F99 | 100 | F1B3 | 4 |

Catégories confondues en N&B (écart de gris < 25) : oop/uvm (Δ0), uvm/obs (Δ3), obs/rnd (Δ19), rnd/cov (Δ4), cov/sva (Δ3).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 5.6, 5.8, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8, 5.6, 5.8 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · classes, aléatoire, couverture, assertions

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | classes | Classes et objets (oop) · Métriques de couverture (cov) | 38 | 6 | 4 | 2 (oop→cov) |
| 2 | aléatoire | rand et contraintes (rnd) · Tirage (rnd) | 35 | 13 | 1 | 1 (rnd) |
| 3 | couverture · SVA | Couverture fonctionnelle (cov) · Assertions (SVA) (sva) | 42 | 9 | 2 | 2 (cov→sva) |

### Page 2 — verso · architecture, séquences, composants

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | architecture | Architecture d'un banc UVM (uvm) · Phases (uvm) · Factory, config\_db, rapports (uvm) | 24 | 11 | 2 | 1 (uvm) |
| 2 | stimulus | Transaction : sequence item (rnd) · Séquence (rnd) · Driver (rnd) | 48 | 0 | 3 | 1 (rnd) |
| 3 | observation · assemblage | Monitor (obs) · Scoreboard (obs) · Assemblage : agent, env, top (uvm) | 52 | 0 | 1 | 2 (obs→uvm) |

- Blocs : 15 · schémas : 1 · pièges : 1 · sous-titres : 10

## Compilation

- Espace libre par colonne (mm) : 1:4.5, 2:6.8, 3:3.3, 4:2.9, 5:16.1, 6:4.5
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 35, médiane 66.6, max 133.9
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 13% · couleur 32% | 13% · couleur 25% | 14% · couleur 34% |
| 2 | 16% · couleur 29% | 13% · couleur 35% | 14% · couleur 34% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
