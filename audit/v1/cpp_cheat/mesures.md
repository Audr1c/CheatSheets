# Mesures : cpp_cheat

- Fichier : `Cpp/cpp_cheat.tex` · thème : `c`
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
| ctl | #6A51B8 | 100 | 6 |
| io | #218C5D | 103 | 1 |
| lib | #C47208 | 126 | 3 |
| syn | #E14775 | 122 | 3 |
| typ | #1A7F99 | 100 | 4 |

Catégories confondues en N&B (écart de gris < 25) : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4).

## Police

- Tailles utilisées (pt) : 4.7, 4.8, 6.55, 6.6, 6.75, 6.95, 7, 7.4, 12
- Sous 6 pt : 4.7, 4.8 (acceptable pour numéros, badges ; pas pour du contenu)
- Texte courant en police à chasse fixe (Hurmit) : même police que le code, pas de contraste typographique entre explications et code.

## Structure

### Page 1 — recto · ce que le C++ ajoute au C

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Du C au C++ (syn) · Références (typ) · Les 4 casts (typ) · vtable et coût (typ) | 25 | 5 | 16 | 2 (syn→typ) |
| 2 | — | Anatomie d'une classe (ctl) · Construction et destruction (ctl) | 44 | 4 | 0 | 1 (ctl) |
| 3 | — | Héritage et polymorphisme (ctl) · Accès et héritage (ctl) | 27 | 13 | 6 | 1 (ctl) |

### Page 2 — verso · ressources, généricité et bibliothèque

| col. | nom | blocs (catégorie) | lignes code | lignes tableau | lignes texte | catégories |
|---|---|---|---|---|---|---|
| 1 | — | Surcharge d'opérateurs (syn) · Allocation et ressources (lib) | 50 | 0 | 5 | 2 (syn→lib) |
| 2 | — | Templates (typ) · Fonctions comme objets (ctl) · enum class et namespace (syn) | 44 | 4 | 4 | 3 (typ→ctl→syn) |
| 3 | — | Flux et chaînes (io) · Conteneurs (lib) · Algorithmes (lib) · Exceptions (ctl) | 31 | 4 | 11 | 3 (io→lib→ctl) |

- Blocs : 17 · schémas : 0 · pièges : 4 · sous-titres : 3

## Compilation

- Espace libre par colonne (mm) : 1:4.2, 2:13.4, 3:6.8, 4:2.7, 5:2.1, 6:12.3
- Overfull hbox : 0
- Glyphes manquants : aucun
- Hauteur des blocs (mm) : min 22.1, médiane 49.1, max 96.1

## Encre et accents de couleur (rendu couleur 100 dpi)

encre = part de la surface encrée · couleur = part de cette encre qui est colorée.
Repères : la fiche Git (jugée la plus lisible) est à environ 30 % de couleur ; sous 15 %
la page paraît terne et uniforme (texte noir et code pâle, rien n'accroche l'œil).

| page | col. 1 | col. 2 | col. 3 |
|---|---|---|---|
| 1 | 12% · couleur 17% | 10% · couleur 13% | 11% · couleur 19% |
| 2 | 10% · couleur 22% | 11% · couleur 21% | 12% · couleur 21% |

## Alertes automatiques

- Contraste limite : code : commentaires (mk-grey) = 3.9:1 (seuil 4.5).
- Contraste limite : code : chaînes (mk-yellow) = 3.6:1 (seuil 4.5).
- Catégories indiscernables en N&B : ctl/typ (Δ0), typ/io (Δ3), io/syn (Δ19), syn/lib (Δ4). La catégorie ne doit pas reposer que sur la couleur.
- Corps du texte à 6.95 pt : petit pour une lecture imprimée (viser ≥ 7 pt).
- Page 2 col. 2 : 3 catégories mélangées, pas d'identité de colonne.
- Page 2 col. 3 : 3 catégories mélangées, pas d'identité de colonne.
- Aucune colonne n'a de titre : le regard n'a pas de repère de niveau colonne (cf. branches de la fiche Git).
- Aucun schéma : pas d'ancre visuelle, toutes les zones se ressemblent.
- Page 1 col. 2 : 13% d'encre colorée seulement, colonne terne et uniforme.

Images : `page-N.png` (couleur), `page-N-gris.png` (N&B), `page-N-flou.png` (plissement d'yeux).
