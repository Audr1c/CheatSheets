# Mesures : cpp_cheat

- Fichier : `Cpp/cpp_cheat.tex` · librairie : `librairie` · thème : `cpp`
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
| ctl | #6A51B8 | 100 | F0E8 | 6 |
| io | #218C5D | 103 | F0EC | 1 |
| lib | #C47208 | 126 | F02D | 4 |
| syn | #E14775 | 122 | F121 | 3 |
| typ | #1A7F99 | 100 | F1B2 | 4 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4).
Chaque catégorie a sa propre icône : la catégorie reste lisible en N&B.

## Police

- Tailles utilisées (pt) : 4.8, 6.6, 6.75, 7.2, 7.5, 8.2, 13
- Sous 6 pt : 4.8 (acceptable pour numéros, badges ; pas pour du contenu)

## Structure

### Page 1 — recto · ce que le C++ ajoute au C

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | du C au C++ | Du C au C++ (syn) · Références (typ) · Les 4 casts (typ) · enum class et namespace (syn) | 28 | 11 | 5 | 2 (syn→typ→syn) |
| 2 | classes | Anatomie d'une classe (ctl) · Construction et destruction (ctl) | 44 | 4 | 2 | 1 (ctl) |
| 3 | héritage | Héritage et polymorphisme (ctl) · vtable et coût (typ) · Accès et héritage (ctl) | 31 | 13 | 6 | 2 (ctl→typ→ctl) |

### Page 2 — verso · ressources, généricité et bibliothèque

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | opérateurs · RAII | Surcharge d'opérateurs (syn) · Allocation et ressources (lib) | 50 | 0 | 5 | 2 (syn→lib) |
| 2 | généricité · lambdas | Templates (typ) · Fonctions comme objets (ctl) · Algorithmes (lib) | 42 | 4 | 4 | 3 (typ→ctl→lib) |
| 3 | bibliothèque · move | Flux et chaînes (io) · Conteneurs (lib) · Déplacement (C++11) (lib) · Exceptions (ctl) | 27 | 8 | 7 | 3 (io→lib→ctl) |

- Blocs : 18 · schémas : 1 · pièges : 4 · sous-titres : 3

## Compilation

- Espace libre par colonne (mm) : 1:4.4, 2:19.1, 3:0, 4:5.4, 5:14.5, 6:5.2
- Overfull hbox : 0
- Glyphes manquants : aucun
- Collisions signalées par la librairie : 0
- Hauteur des blocs (mm) : min 23.8, médiane 49.8, max 95.2
- Lignes de code coupées (↪) : 0

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 15% · couleur 33% | 13% · couleur 25% | 15% · couleur 32% |
| 2 | 12% · couleur 35% | 13% · couleur 32% | 15% · couleur 33% |

## Alertes automatiques

- aucune

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
