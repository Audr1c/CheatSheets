# Audit : cpp_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `cpp` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/cpp_cheat/rapport.md](../v1/cpp_cheat/rapport.md)

Prototype de la v2 : premier passage à la librairie v2 puis v2.1, puis corrections de contenu.

## Notes : v1 → v2 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 2 | 2 | 1 | 1 | 1 | 1 | 2 | 10 |
| v2 | 2 | 3 | 3 | 3 | 3 | 2 | 2 | 18 |
| **v2.1** | **3** | 3 | 3 | 3 | 3 | 2 | **3** | **20** |
| Git (réf., v1) | 2 | 2 | 3 | 1 | 2 | 2 | 3 | 15 |

## Premier coup d'œil

La page se lit par colonnes : six étiquettes numérotées, chacune sur son rail, puis des
onglets colorés dont l'icône dit la catégorie. Au plissement d'yeux, les onglets foncés et les
rails dessinent la structure ; en N&B elle reste entière (icônes, gras des mots-clés, fond gris
du code). Plus rien ne se touche, vérifié à 200 dpi.

## Ce que la v2.1 règle par construction

| règle | effet sur la fiche C++ |
|---|---|
| R1 rythme vertical unique | même espace entre deux éléments quels qu'ils soient ; rien en haut ni en bas d'un bloc ; un sous-titre colle à son contenu |
| R2 fond de code mesuré | le fond du code ne recouvre plus la ligne de tableau qui précède ; une ligne trop longue passe à la ligne (↪, comptée par l'audit) |
| R3 tableaux mesurés | `reinterpret_cast<T>(x)` ne touche plus sa remarque ; les étiquettes de tous les tableaux s'alignent (16 mm minimum) |
| R4 surimpressions contrôlées | l'étiquette « 4 · opérateurs · ressources » touchait l'onglet : signalée, raccourcie en « opérateurs · RAII » |
| R5 blancs plafonnés | écarts entre blocs ≤ 4,5 mm d'étirement ; la place restante va en bas |
| R6 fer à gauche | jamais d'espaces étirés entre les mots |

Mesures : 0 débordement, 0 ligne trop longue, 0 collision, 0 ligne de code coupée,
0 glyphe manquant ; encre colorée 25 à 35 % par colonne ; contrastes tous ≥ 4,5:1 (texte
fin) ou ≥ 3:1 (gras).

## Test des 5 questions

| question | v1 | v2.1 |
|---|---|---|
| Écrire `operator<<` ? | immédiat | immédiat (col. 4 « opérateurs · RAII ») |
| Règle des trois ? | difficile | immédiat : « RAII » dans le titre de colonne, sous-titre ■ visible |
| Capturer par référence dans une lambda ? | difficile | immédiat (col. 5 « généricité · lambdas ») |
| erase-remove sur un `vector` ? | après balayage | immédiat (col. 5, « Algorithmes ») |
| Pourquoi un destructeur `virtual` ? | après balayage | immédiat (col. 3 « héritage », piège) |

## Corrections de contenu faites

| correction |
|---|
| *slicing* expliqué par le passage par valeur (l'exemple de la v1 ne compilait pas : classe abstraite) |
| `value` non `const` (sinon `operator=` est supprimé) ; héritage `private` par défaut pour `class` |
| bloc « Déplacement (C++11) » (`T&&`, `std::move`, règles des 5 et des 0) avec schéma du vol de tampon ; col. 6 renommée « bibliothèque · move » |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | En N&B, types et intégrés (maigres) se confondent | librairie | voir synthèse |
| basse | 19 mm libres en col. 2 | fiche | exemple de `= default` / `= delete` |

## Points forts

- Repérage : chaque question du test se résout depuis un titre de colonne.
- La librairie signale elle-même ses défauts (`grep "\[fiche\]" cpp_cheat.log`).
