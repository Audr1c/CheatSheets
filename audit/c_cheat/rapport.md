# Audit : c_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `c` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/c_cheat/rapport.md](../v1/c_cheat/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 2 | 2 | 1 | 1 | 1 | 1 | 2 | 10 |
| **v2.1** | **3** | **3** | **3** | **3** | **3** | **2** | **3** | **20** |

## Premier coup d'œil

Barre bleue au logo C, six colonnes nommées (« types · opérateurs », « contrôle · fonctions »,
« pointeurs · chaînes », « données · macros », « mémoire », « E/S · compilation ») : on choisit
la colonne avant de lire un titre. Deux schémas servent d'ancres au verso (bourrage d'une
structure, zones mémoire). Au plissement d'yeux, les onglets pleins et les rails découpent la
page ; en N&B, les icônes de catégorie et le fond gris du code tiennent la structure.

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| `x & MASK == 0` : quelle priorité ? | col. 1 → « Opérateurs par priorité » (piège) | 1 | après balayage | immédiat |
| Format `printf` d'un `size_t` ? | col. 6 « E/S · compilation » → « E/S <stdio.h> » | 1 | après balayage | immédiat |
| Libérer une matrice dynamique ? | col. 5 « mémoire » → ■ Matrice dynamique | 2 | après balayage | immédiat |
| Taille d'une structure avec bourrage ? | col. 4 → schéma de `s1` | 1 | difficile | immédiat |
| Déboguer avec gdb ? | col. 6 → « Compilation et débogage » → ■ gdb | 1 | absent | immédiat |

## Corrections faites (par rapport à l'audit v1)

| où | correction |
|---|---|
| fiche | `free` : « ne plus utiliser la zone après `free` » (au lieu de « jamais après usage ») |
| fiche | `-std=c17` ; `0b…` et `bool` mot-clé signalés comme C23 |
| fiche | `m[i][j] = 0;` commenté « accès comme en 2D » |
| fiche | ajout : gdb et valgrind (tableau commande → effet), Makefile minimal |
| fiche | `<string.h>`, `<stdlib.h>`, `<math.h>`, `<ctype.h>`, `<assert.h>` réunis en un bloc « Bibliothèque standard » |
| fiche | « Pièges classiques » au recto (col. 1) ; « Bits et registres » avec les `#define` et les types composés |
| fiche | schémas : bourrage de `struct s1`, carte des zones mémoire |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | Préprocesseur (col. 4) à une colonne de la compilation (col. 6) ; `module.h` est bien avec la compilation | fiche | acceptable : la col. 4 groupe ce qui manipule des bits et des macros |
| basse | En N&B, types et intégrés (maigres) se confondent | librairie | voir synthèse |
| basse | 14 mm libres en col. 2, 17 mm en col. 4 | fiche | place pour un exemple (`switch` sur `enum`, tableau de pointeurs de fonction) |

## Points forts

- Tableaux étiquette | code | remarque alignés d'une colonne à l'autre (16 mm), y compris les
  numéros de priorité gardés à leur largeur (puces).
- Chaque colonne répond à une famille de questions de TP.
