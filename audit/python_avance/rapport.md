# Audit : python_avance — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `python` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/python_avance/rapport.md](../v1/python_avance/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |
| **v2.1** | 3 | **3** | **3** | **3** | **3** | **2** | **3** | **20** |

## Premier coup d'œil

Colonnes « match · itérer », « fonctions », « objets » au recto ; « with · typage · paquet »,
« concurrence », « qualité » au verso. L'arbre de décision « threads ou processus ? » en tête
de la colonne concurrence est la première chose que l'œil accroche au verso.

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| Threads ou processus pour 32 simulations ? | col. 5 → arbre de décision | 1 | après balayage (tableau texte) | immédiat |
| Décorateur avec paramètres ? | col. 2 « fonctions » → « Décorateurs » | 3 | immédiat | immédiat |
| Fixture pytest partagée ? | col. 6 « qualité » → « Tests avec pytest » | 1 | immédiat | immédiat |
| Dataclass immuable et triable ? | col. 3 « objets » → « dataclasses et Enum » | 4 | après balayage | après balayage |
| Motif de dict dans `match` ? | col. 1 → « match » (en tête) | 1 | difficile (bas de la colonne itérateurs) | immédiat |

## Corrections faites

| où | correction |
|---|---|
| fiche | commentaires de typage : « a un `.read()` » sur la ligne de `charger`, « génératrice » sur `gen` |
| fiche | GIL : mention de Python 3.13 sans GIL (`python3.13t`, expérimental) |
| fiche | `match` en tête de la col. 1 (contrôle), plus au bas des itérateurs |
| fiche | `__enter__ __exit__` renvoie aux context managers du verso |
| fiche | « Threads ou processus ? » dessiné en arbre de décision |
| librairie | fer à gauche complet (R6) : la remarque d'asyncio n'a plus d'espaces étirés |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | Col. 3 « objets » : quatre blocs de code denses de même aspect | fiche | un schéma du MRO (diamant) servirait d'ancre |
| basse | En N&B, types et intégrés se confondent | librairie | voir synthèse |
| basse | 18 mm libres en col. 6 | fiche | `pytest --cov`, `ruff` / `black` |

## Points forts

- Exemples du métier (simulations `vsim`, graines, rapports) d'un bout à l'autre.
- Pièges avancés ciblés (générateur épuisé, `await` oublié).
