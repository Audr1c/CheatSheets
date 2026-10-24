# Audit : git_cheat (2026-10-24)

Thème : `git` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 2 | 2 | 3 | 1 | 2 | 2 | 3 | 15 |

## Premier coup d'œil

La fiche de référence du projet. L'œil suit les rails colorés et les mini-graphes : chaque
colonne a un nom (`main`, `feat/branches`, `origin/main`, `fix/annuler`…) et une couleur, les
schémas servent d'ancres. Au plissement d'yeux, la structure reste visible (rails, ronds de
commit). En N&B, les rails et les formes survivent ; seules les couleurs de catégorie se
confondent, mais l'étiquette de colonne compense. Encre colorée : 28 à 34 % par colonne.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Annuler le dernier commit sans perdre le travail ? | verso col. 2 `fix/annuler` → « reset » | 1 | immédiat |
| Renommer une branche sur origin ? | recto col. 2 `feat/branches` → « Branches » → note | 2 | immédiat |
| Récupérer un commit « perdu » ? | verso col. 2 → « Filet de sécurité : reflog » | 4 | immédiat (colonne), puis balayage court |
| Voir ce que `feat` ajoute à `main` ? | recto col. 2 « Désigner un commit » ou col. 3 « Historique » | 5 | après balayage : deux endroits |
| Mettre son travail de côté ? | recto col. 3 → « stash » | 7 | après balayage : la colonne s'appelle `origin/main`, stash n'y est pas attendu |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| moyenne | Police unique à chasse fixe, titres peu plus gros que le texte | librairie | voir synthèse |
| moyenne | Commentaires `#` pâles (3,9:1) | librairie | assombrir `mk-grey` |
| basse | Colonne `origin/main` contient historique, stash et worktree | fiche | renommer la colonne (`origin/main · outils`) ou déplacer « Historique » en col. 2 |
| basse | 13 mm libres en recto col. 1 | fiche | agrandir le schéma des 4 zones ou ajouter `git log` simple |

### Contenu : erreurs et manques

- `Git/git_cheat.tex:474` — « environ 90 jours » : un commit devenu inaccessible expire du reflog après **30 jours** par défaut (`gc.reflogExpireUnreachable`) ; 90 jours concerne les entrées encore accessibles.
- `Git/git_cheat.tex:183` — les commentaires `#` dans l'exemple de conflit sont en syntaxe Git, pas Verilog : préciser qu'ils sont des annotations (ou utiliser `//`).

### Ordonnancement

- « Trouver le commit fautif (bisect) » est en col. 1 (`main`, les bases) : c'est un outil d'historique, à placer près de « Historique ».
- « Historique » (col. 3) gagnerait à suivre « Désigner un commit » (col. 2), qui en définit la syntaxe.

## Points forts à garder

- Rail + nom de branche par colonne : identité de colonne immédiate, même en N&B.
- Icônes de branche colorées dans les onglets ; schémas dans presque chaque bloc.
- Tableau `reset --soft / --mixed / --hard` avec coches : se lit sans texte.
- Pièges concrets, tous liés à un vrai scénario d'équipe.
