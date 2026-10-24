# Mesures : python_avance

- Fichier : `python/python_avance.tex` · librairie : `librairie` · thème : `python`
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
| ex | #E16032 | 129 | F0EB | 5 |
| io | #218C5D | 103 | F120 | 3 |
| lib | #C47208 | 126 | F02D | 3 |
| syn | #E14775 | 122 | F121 | 3 |
| typ | #1A7F99 | 100 | F1B2 | 6 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4), lib/ex (Δ3).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · itérateurs, fonctions, objets

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | match · itérer | match : motifs avancés (ctl) · Itérateurs (ctl) · Générateurs (ctl) · itertools (lib) | 33 | 11 | 2 | 2 (ctl→lib) |
| 2 | fonctions | Fermetures (closures) (syn) · Signatures (syn) · Décorateurs (syn) · functools (lib) | 43 | 0 | 3 | 2 (syn→lib) |
| 3 | objets | Méthodes spéciales (typ) · Classes : compléments (typ) · Héritage multiple (typ) · dataclasses et Enum (typ) | 35 | 10 | 1 | 1 (typ) |

### Page 2 — verso · typage, concurrence, qualité

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | with · typage · paquet | Context managers (ctl) · Annotations de type (typ) · Autres structures typées (typ) · Paquet installable (lib) | 43 | 0 | 3 | 3 (ctl→typ→lib) |
| 2 | concurrence | Threads ou processus ? (ex) · concurrent.futures : N simulations (ex) · Calcul en parallèle (ex) · asyncio (ex) | 33 | 0 | 4 | 1 (ex) |
| 3 | qualité | Tests avec pytest (io) · Débogage (io) · Journal et mesures (io) · Pièges avancés (ex) | 28 | 9 | 2 | 2 (io→ex) |

- Blocs : 24 · schémas : 1 · pièges : 0 · sous-titres : 0

## Compilation

- Espace libre par colonne (mm) : 1:9.5, 2:8.6, 3:11.3, 4:6.5, 5:0.3, 6:18.2
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 11.2, médiane 36.7, max 73.6
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 12% · couleur 32% | 13% · couleur 33% | 14% · couleur 38% |
| 2 | 15% · couleur 41% | 16% · couleur 37% | 14% · couleur 30% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
