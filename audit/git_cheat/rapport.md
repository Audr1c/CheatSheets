# Audit : git_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `git` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/git_cheat/rapport.md](../v1/git_cheat/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 2 | 2 | 3 | 1 | 2 | 2 | 3 | 15 |
| **v2.1** | **3** | **3** | 3 | **3** | **3** | 2 | 3 | **20** |

## Premier coup d'œil

L'identité de la v1 est gardée (barre orange et graphe décoratif, colonnes = branches avec
rail et icône de branche, 11 mini-graphes) et passe aux règles communes : onglets pleins avec
une icône par catégorie (dossier, horloge, embranchement, nuage, crayon, flèche retour), prose
en Plex, commentaires assombris. Encre colorée 43 à 47 % par colonne au verso, la plus haute
du projet, mais portée par des repères (graphes, rails), pas par du bruit.

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| Annuler le dernier commit non poussé ? | col. 5 `fix/annuler` → « reset » (tableau à coches) | 1 | immédiat | immédiat |
| Retrouver un commit après `reset --hard` ? | col. 5 → « Filet de sécurité : reflog » | 2 | immédiat | immédiat |
| Voir ce qui est indexé ? | col. 1 `main` → « Les 4 zones » | 1 | immédiat | immédiat |
| Trouver le commit qui a introduit un bug ? | col. 2 → « Historique » → ■ bisect | 2 | difficile (col. 1, loin de l'historique) | immédiat |
| Workflow d'équipe (branche, MR) ? | col. 3 `origin/main` → « Travailler en équipe » | 4 | absent | après balayage |

## Corrections faites

| où | correction |
|---|---|
| fiche | reflog : « au moins 30 jours (90 s'il est encore sur une branche) » |
| fiche | conflit : annotations `#` sur les lignes de marqueurs, plus dans le code Verilog |
| fiche | « Historique » suit « Désigner un commit » ; bisect en sous-titre de l'historique |
| fiche | stash avec les bases (même catégorie) ; conflit en tête de col. 3, à la suite de la fusion |
| fiche | ajout : « Travailler en équipe » (branche → mise à jour → push → relecture → ménage) |
| librairie | tableau `reset` en `coches{3}` (plus de `tabular` écrit à la main) |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | En N&B, options (`--x`) et références se confondent (même graisse) | librairie / langage | options en italique, ou refs soulignées |
| basse | « Travailler en équipe » au bas de la col. 3, après le worktree | fiche | le mettre avant « Branches en parallèle » si on le consulte souvent |

## Points forts

- Le seul tableau à coches (`reset`) se lit sans texte.
- Les graphes suivent maintenant le rythme commun (`schema`) : plus d'espace manuel.
