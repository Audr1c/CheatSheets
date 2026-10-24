# Audit : python_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `python` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/python_cheat/rapport.md](../v1/python_cheat/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 3 | 2 | 1 | 1 | 1 | 1 | 2 | 11 |
| **v2.1** | 3 | **3** | **3** | **3** | **3** | **2** | **3** | **20** |

## Premier coup d'œil

Barre bleue au liseré jaune, six colonnes nommées (« bases », « contrôle · fonctions »,
« collections · classes », « fichiers · scripts », « outils », « numpy · tracés · pièges »).
Les 27 petits blocs semblables de la v1 deviennent 25 blocs regroupés par colonne ; le schéma
des indices de découpage donne une ancre au recto.

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| Que vaut `s[1:4]`, `s[-2:]` ? | col. 1 → « Chaînes » (schéma) | 1 | après balayage | immédiat |
| Lire un CSV en dictionnaires ? | col. 4 « fichiers · scripts » → « CSV et JSON » | 1 | après balayage | immédiat |
| Lancer un outil, récupérer sa sortie ? | col. 5 « outils » → « subprocess » | 1 | immédiat | immédiat |
| Pourquoi ma liste par défaut se remplit ? | col. 2 → « Fonctions » (piège) | 1 | difficile (pièges au verso) | immédiat |
| Afficher un entier en hexa sur 4 chiffres ? | col. 1 « Chaînes et f-strings » ou col. 6 « Bits » | 2 | après balayage | après balayage |

## Corrections faites

| où | correction |
|---|---|
| fiche | `>=` ajouté aux comparaisons |
| fiche | `open(«f»).read()` sans `with` → `Path(«f»).read_text()` ; JSON par `Path` |
| fiche | contrôle et boucles réunis (« Contrôle et boucles »), avant les compréhensions |
| fiche | Types + Nombres fusionnés ; console en col. 1 avec les f-strings, fichiers au verso |
| fiche | pièges en ligne : défaut mutable (Fonctions), alias (Listes) ; nouveau : modifier en itérant |
| fiche | titre cherchable : « Script : argparse, main » |
| fiche | schéma des indices de découpage (positifs, négatifs, fin exclue) |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | Formatage hexa à deux endroits (f-strings, bits) | fiche | renvoi croisé, ou réunir |
| basse | En N&B, types et intégrés se confondent | librairie | voir synthèse |
| basse | 18 mm libres en col. 3 | fiche | place pour `copy` / `deepcopy` ou `sorted(key=...)` détaillé |

## Points forts

- Commentaires de résultat (`# 255, 5`) : la réponse se lit sans exécuter.
- Paire cohérente avec Python avancé (même thème, mêmes couleurs de colonnes).
