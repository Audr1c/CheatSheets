# Mesures : python_avance

- Fichier : `python/python_avance.tex` · thème : `python`
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
| ctl | #6A51B8 | 100 | 4 |
| ex | #E16032 | 129 | 5 |
| io | #218C5D | 103 | 3 |
| lib | #C47208 | 126 | 3 |
| syn | #E14775 | 122 | 3 |
| typ | #1A7F99 | 100 | 6 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3).

## Police

- Tailles utilisées (pt) : 4.7, 4.8, 6.55, 6.6, 6.75, 6.95, 7, 7.4, 12
- Sous 6 pt : 4.7, 4.8 (acceptable pour numéros, badges ; pas pour du contenu)
- Texte courant en police à chasse fixe (Hurmit) : même police que le code, pas de contraste typographique entre explications et code.

## Structure

### Page 1 — recto · itérateurs, fonctions, objets

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Itérateurs (ctl) · Générateurs (ctl) · itertools (lib) · match : motifs avancés (ctl) | 33 | 11 | 2 | 2 (ctl→lib→ctl) |
| 2 | — | Fermetures (closures) (syn) · Signatures (syn) · Décorateurs (syn) · functools (lib) | 43 | 0 | 3 | 2 (syn→lib) |
| 3 | — | Méthodes spéciales (typ) · Classes : compléments (typ) · Héritage multiple (typ) · dataclasses et Enum (typ) | 35 | 10 | 1 | 1 (typ) |

### Page 2 — verso · typage, concurrence, qualité

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Context managers (ctl) · Annotations de type (typ) · Autres structures typées (typ) · Paquet installable (lib) | 43 | 0 | 3 | 3 (ctl→typ→lib) |
| 2 | — | Threads ou processus ? (ex) · concurrent.futures : N simulations (ex) · Calcul en parallèle (ex) · asyncio (ex) | 33 | 3 | 3 | 1 (ex) |
| 3 | — | Tests avec pytest (io) · Débogage (io) · Journal et mesures (io) · Pièges avancés (ex) | 28 | 9 | 2 | 2 (io→ex) |

- Blocs : 24 · schémas : 0 · pièges : 0 · sous-titres : 0

## Compilation

- Espace libre par colonne (mm) : 1:4.8, 2:3.6, 3:7.5, 4:6.2, 5:5.9, 6:9.2
- Overfull hbox : 0
- Glyphes manquants : aucun
- Hauteur des blocs (mm) : min 11.1, médiane 39.9, max 76.2

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 10% · couleur 16% | 10% · couleur 17% | 11% · couleur 23% |
| 2 | 12% · couleur 25% | 13% · couleur 17% | 12% · couleur 15% |

## Alertes automatiques

- Contraste limite : code : commentaires (mk-grey) = 3.9:1 (seuil 4.5).
- Contraste limite : code : chaînes (mk-yellow) = 3.6:1 (seuil 4.5).
- Catégories indiscernables en N&B : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3). La catégorie ne doit pas reposer que sur la couleur.
- Corps du texte à 6.95 pt : petit pour une lecture imprimée (viser ≥ 7 pt).
- Page 2 col. 1 : 3 catégories mélangées, pas d'identité de colonne.
- Aucune colonne n'a de titre : le regard n'a pas de repère de niveau colonne (cf. branches de la fiche Git).
- Aucun schéma : pas d'ancre visuelle, toutes les zones se ressemblent.

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
