# Audit : cpp_cheat (2026-10-24)

Thème : `c` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 2 | 2 | 1 | 1 | 1 | 1 | 2 | 10 |

## Premier coup d'œil

Même impression que la fiche C : une grille de blocs identiques, longs listings, pas de repère.
Au plissement d'yeux, seuls les grands blocs de code ressortent (« Anatomie d'une classe »,
« Surcharge d'opérateurs ») ; rien ne dit où commence l'héritage ou la bibliothèque.
Encre colorée : 14 à 21 % par colonne.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Écrire `operator<<` ? | verso col. 1 → « Surcharge d'opérateurs » | 1 + recto | immédiat |
| Règle des trois ? | verso col. 1 → « Allocation et ressources » → sous-titre | 2 + recto | difficile : invisible depuis les titres |
| Capturer par référence dans une lambda ? | verso col. 2 → « Fonctions comme objets » | 4 + recto | difficile : le titre ne dit pas « lambda » |
| erase-remove sur un `vector` ? | verso col. 3 → « Algorithmes » | 8 + recto | après balayage |
| Pourquoi un destructeur `virtual` ? | recto col. 3 → « Héritage et polymorphisme » → piège | 7 | après balayage |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | Pas d'identité de colonne, 3 catégories mélangées en recto col. 1 | librairie + fiche | rail + titre de colonne ; une colonne = un thème |
| haute | Catégorie invisible en N&B, police unique sans hiérarchie | librairie | voir synthèse (onglet coloré + icône, titres plus gros) |
| moyenne | Titres qui ne contiennent pas le mot cherché | fiche | « Fonctions comme objets » → « Lambdas et foncteurs » ; « Allocation et ressources » → « new/delete, RAII, règle des 3 » |
| moyenne | Commentaires pâles, numéros de ligne | librairie | voir synthèse |

### Contenu : erreurs et manques

- `Cpp/cpp_cheat.tex:196` — `Shape s = rect;` ne compile pas : `Shape` est abstraite (`draw() = 0`). Illustrer le *slicing* avec une base concrète, ou écrire « passer une `Shape` par valeur tronque l'objet ».
- `Cpp/cpp_cheat.tex:141` — membre `const long value` avec un `operator=` déclaré : l'affectation ne peut pas modifier `value`. Retirer `const` ou l'`operator=` de l'exemple.
- `Cpp/cpp_cheat.tex:205` — « seule différence » : `struct` et `class` diffèrent aussi par le mode d'héritage par défaut (ligne 217 le dit pour `class` seulement).
- Manques importants pour du C++ moderne : sémantique de déplacement (`T&&`, `std::move`, règle des 5 / des 0), `std::unique_ptr` en paramètre, `const` correctness, ligne de compilation `g++ -std=c++17 -Wall`.

### Ordonnancement

- « vtable et coût » (recto col. 1) et `dynamic_cast` (« Les 4 casts ») utilisent `virtual` avant que le polymorphisme soit introduit (col. 3) : déplacer « vtable » après « Héritage et polymorphisme ».
- « Exceptions » à la fin du verso, après les conteneurs : acceptable, mais `bad_alloc` est cité dès « Allocation » (col. 1).

## Points forts à garder

- Bon découpage « ce que le C++ ajoute au C » : pas de doublon avec la fiche C.
- Tableau pointeur / référence très lisible, exemples courts et réalistes (Circle, Duration, Shape).
