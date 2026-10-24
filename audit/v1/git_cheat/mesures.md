# Mesures : git_cheat

- Fichier : `Git/git_cheat.tex` · thème : `git`
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
| code : classe [4] | `code-kw4` | 3.6:1 | 124 | ok |
| code : commentaires | `mk-grey` | 3.9:1 | 129 | limite |
| code : chaînes | `mk-yellow` | 3.6:1 | 126 | limite |
| code : «à remplir» | `mk-purple` | 6.0:1 | 100 | ok |
| numéros de ligne | `gutter` | 2.2:1 | 176 | insuffisant |
| \piege (warning) | `mk-orange` | 3.5:1 | 129 | ok |

## Catégories

| catégorie | couleur | gris N&B | blocs |
|---|---|---|---|
| base | #F05032 | 124 | 5 |
| br | #218C5D | 103 | 4 |
| his | #C47208 | 126 | 3 |
| rem | #1A7F99 | 100 | 2 |
| rw | #6A51B8 | 100 | 4 |
| und | #E14775 | 122 | 5 |

Catégories confondues en N&B (écart de gris < 25) : rem/rw (Δ0), rw/br (Δ3), br/und (Δ19), und/base (Δ2), base/his (Δ2).

## Police

- Tailles utilisées (pt) : 4.7, 4.8, 5.2, 6.55, 6.6, 6.75, 6.95, 7, 7.4, 12
- Sous 6 pt : 4.7, 4.8, 5.2 (acceptable pour numéros, badges ; pas pour du contenu)
- Texte courant en police à chasse fixe (Hurmit) : même police que le code, pas de contraste typographique entre explications et code.

## Structure

### Page 1 — recto · les commandes

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | main | Les 4 zones (base) · Configurer et démarrer (base) · Enregistrer (base) · Trouver le commit fautif (bisect) (his) | 26 | 3 | 3 | 2 (base→his) |
| 2 | feat/branches | Désigner un commit (his) · Branches (br) · Fusionner (merge) (br) · Résoudre un conflit (br) | 26 | 6 | 2 | 2 (his→br) |
| 3 | origin/main | Historique (his) · Dépôts distants (rem) · Mettre de côté (stash) (base) · Branches en parallèle (worktree) (rem) | 27 | 0 | 8 | 3 (his→rem→base→rem) |

### Page 2 — verso · réécrire, annuler, organiser

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | feat/rebase | Rebaser une branche (rw) · Branches empilées (rw) · Rebase interactif : nettoyer (rw) | 17 | 6 | 6 | 1 (rw) |
| 2 | fix/annuler | reset : reculer la branche (und) · Supprimer un commit (und) · Petites réparations (und) · Filet de sécurité : reflog (und) | 21 | 4 | 11 | 1 (und) |
| 3 | main | Copier un commit (cherry-pick) (rw) · Fichiers et dossiers (base) · Structure du projet (br) · Pièges (und) | 17 | 4 | 4 | 4 (rw→base→br→und) |

- Blocs : 23 · schémas : 11 · pièges : 4 · sous-titres : 7

## Compilation

- Espace libre par colonne (mm) : 1:13, 2:3.9, 3:9.7, 4:3.3, 5:3.1, 6:4.9
- Overfull hbox : 0
- Glyphes manquants : aucun
- Hauteur des blocs (mm) : min 19.2, médiane 41.2, max 60.5

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 12% · couleur 28% | 12% · couleur 30% | 14% · couleur 29% |
| 2 | 13% · couleur 34% | 13% · couleur 33% | 13% · couleur 32% |

## Alertes automatiques

- Contraste limite : code : commentaires (mk-grey) = 3.9:1 (seuil 4.5).
- Contraste limite : code : chaînes (mk-yellow) = 3.6:1 (seuil 4.5).
- Catégories indiscernables en N&B : rem/rw (Δ0), rw/br (Δ3), br/und (Δ19), und/base (Δ2), base/his (Δ2). La catégorie ne doit pas reposer que sur la couleur.
- Corps du texte à 6.95 pt : petit pour une lecture imprimée (viser ≥ 7 pt).
- Page 1 col. 3 : 3 catégories mélangées, pas d'identité de colonne.
- Page 2 col. 3 : 4 catégories mélangées, pas d'identité de colonne.

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
