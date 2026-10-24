# Mesures : git_cheat

- Fichier : `Git/git_cheat.tex` · librairie : `librairie` · thème : `git`
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
| code : classe [4] | `code-kw4` | 3.6:1 | 124 | ok |
| code : commentaires | `mk-grey` | 5.7:1 | 103 | ok |
| code : chaînes | `mk-string` | 5.1:1 | 104 | ok |
| code : «à remplir» | `mk-purple` | 6.0:1 | 100 | ok |
| \piege (warning) | `mk-orange` | 3.5:1 | 129 | ok |

## Catégories

| catégorie | couleur | gris N&B | icône | blocs |
|---|---|---|---|---|
| base | #F05032 | 124 | F07C | 5 |
| br | #218C5D | 103 | F126 | 4 |
| his | #C47208 | 126 | F1DA | 2 |
| rem | #1A7F99 | 100 | F0C2 | 3 |
| rw | #6A51B8 | 100 | F040 | 4 |
| und | #E14775 | 122 | F0E2 | 5 |

Catégories confondues en N&B (écart de gris < 25) : rem/rw (Δ0), rw/br (Δ3), br/und (Δ19), und/base (Δ2), base/his (Δ2).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 5.2, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8, 5.2 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · les commandes

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | main | Les 4 zones (base) · Configurer et démarrer (base) · Enregistrer (base) · Mettre de côté (stash) (base) | 27 | 3 | 4 | 1 (base) |
| 2 | feat/branches | Désigner un commit (his) · Historique (his) · Branches (br) · Fusionner (merge) (br) | 29 | 6 | 1 | 2 (his→br) |
| 3 | origin/main | Résoudre un conflit (br) · Dépôts distants (rem) · Branches en parallèle (worktree) (rem) · Travailler en équipe (rem) | 30 | 0 | 9 | 2 (br→rem) |

### Page 2 — verso · réécrire, annuler, organiser

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | feat/rebase | Rebaser une branche (rw) · Branches empilées (rw) · Rebase interactif : nettoyer (rw) | 17 | 6 | 6 | 1 (rw) |
| 2 | fix/annuler | reset : reculer la branche (und) · Supprimer un commit (und) · Petites réparations (und) · Filet de sécurité : reflog (und) | 21 | 4 | 9 | 1 (und) |
| 3 | main | Copier un commit (cherry-pick) (rw) · Fichiers et dossiers (base) · Structure du projet (br) · Pièges (und) | 17 | 4 | 4 | 4 (rw→base→br→und) |

- Blocs : 23 · schémas : 11 · pièges : 4 · sous-titres : 8

## Compilation

- Espace libre par colonne (mm) : 1:6.3, 2:1.2, 3:5.7, 4:6.6, 5:11.8, 6:15.7
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 26.2, médiane 42.4, max 61.9
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 15% · couleur 40% | 15% · couleur 42% | 17% · couleur 40% |
| 2 | 15% · couleur 43% | 16% · couleur 47% | 16% · couleur 44% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
