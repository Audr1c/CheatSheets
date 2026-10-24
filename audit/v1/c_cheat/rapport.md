# Audit : c_cheat (2026-10-24)

Thème : `c` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 2 | 2 | 1 | 1 | 1 | 1 | 2 | 10 |

## Premier coup d'œil

L'œil va à la barre bleue, puis erre : 18 blocs blancs à cadre noir identiques, sans repère de
colonne. Au plissement d'yeux on voit 3 colonnes de rectangles gris, rien ne distingue « types »
de « contrôle » ou de « mémoire ». Encre colorée : 11 à 19 % par colonne (Git : 30 %), d'où
l'impression terne. En N&B, les 6 catégories tombent dans le même gris (100 à 129).

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Format `printf` d'un `size_t` ? | verso col. 3 → « Entrées / sorties » | 7 | après balayage |
| Déclarer un pointeur de fonction ? | recto col. 3 → « Pointeurs » → sous-titre | 7 | après balayage |
| Priorité de `&` face à `==` ? | recto col. 1 → « Opérateurs par priorité » | 2 | immédiat |
| Mettre le bit n à 0 ? | verso col. 1 → « Bits et registres » (3e bloc) | 3 + recto | après balayage |
| `strncpy` met-il le `'\0'` ? | recto col. 3 → « <string.h> » | 9 | difficile : « Bibliothèque standard » (col. 1) attire d'abord |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | Aucune identité de colonne : il faut lire tous les titres | librairie | rail + étiquette de colonne pour toutes les fiches (comme Git) : « types · opérateurs », « contrôle · fonctions », « pointeurs · chaînes »… |
| haute | Catégorie signalée par un liseré de 2 pt, invisible en N&B | librairie | onglet rempli de la couleur de catégorie, ou barre latérale épaisse + icône propre à chaque catégorie |
| haute | Même police à chasse fixe pour les explications et le code ; titres de bloc à 7,4 pt contre 6,95 pt de texte | librairie | titres plus gros (≈ 9 pt), sous-titres non seulement colorés ; police proportionnelle pour la prose (à décider) |
| moyenne | Commentaires (3,9:1) et chaînes (3,6:1) pâles : les explications du code sont dans la couleur la moins lisible | librairie | assombrir `mk-grey` et `mk-yellow` (≥ 5:1) |
| moyenne | Mots-clés, types, intégrés : trois couleurs → un seul gris en N&B | librairie | différencier aussi par la graisse / l'italique |
| moyenne | Numéros de ligne dans chaque listing : bruit, 3,4 mm de largeur perdus | librairie | les retirer (ou option) |
| basse | Page 2 col. 1 : 15 mm libres, col. 3 : 13,7 mm | fiche | redistribuer, ou agrandir les exemples |

### Contenu : erreurs et manques

- `C/c_cheat.tex:339` — « jamais après usage » ne veut rien dire → « ne plus utiliser après `free` ».
- `C/c_cheat.tex:415` — `-std=c99` alors que la fiche cite des nouveautés C23 (`0b…`, `bool` mot-clé) → `-std=c17` (ou `c23`) et signaler ces deux points comme C23.
- `C/c_cheat.tex:334` — `m[i][j] = 0;` hors boucle, `i` et `j` non définis : commenter « accès » ou l'intégrer à la boucle.
- Manque possible : commandes `gdb` de base (`break`, `run`, `next`, `print`, `bt`), utiles en TP.

### Ordonnancement

- « Bibliothèque standard » (recto col. 1, `<math.h>`, `rand`) est séparée de « <string.h> » (col. 3) : les réunir.
- « Préprocesseur » (verso col. 1) et « Module : en-tête » / « Compilation » (col. 3) traitent de la même chaîne : les rapprocher.
- « Bits et registres » (exemple) est en col. 1 sous le préprocesseur, l'autre exemple (liste chaînée) en col. 2 : regrouper les exemples.

## Points forts à garder

- Contenu dense et juste, pièges bien choisis (`-1 < 1u`, `x & MASK == 0`, `SQ(i++)`).
- Tableaux étiquette | code | remarque bien alignés, faciles à balayer verticalement.
- Colonne 2 du recto homogène (tout « contrôle »).
