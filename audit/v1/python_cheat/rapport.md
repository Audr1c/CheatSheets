# Audit : python_cheat (2026-10-24)

Thème : `python` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 3 | 2 | 1 | 1 | 1 | 1 | 2 | 11 |

## Premier coup d'œil

27 blocs, le plus grand nombre du projet, tous de même aspect : une mosaïque de petits
rectangles. Les blocs courts laissent de grands blancs étirés au hasard (12 mm libres en
col. 1 et 2 du recto), ce qui casse les groupes au lieu de les montrer. Aucun sous-titre ni
piège en ligne : rien n'accroche l'œil à l'intérieur des blocs.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Formater un `float` à 3 décimales ? | recto col. 1 → « Chaînes et f-strings » (4e) | 4 | après balayage |
| Lire un CSV ? | verso col. 1 → « CSV et JSON » | 3 + recto | immédiat |
| Valeur par défaut d'un dict ? | recto col. 2 → « Dictionnaires » | 7 | après balayage |
| Boucle avec l'indice ? | recto col. 3 → « Itérer » (`enumerate`) | 10 | difficile : on cherche d'abord dans « Contrôle » (col. 2) |
| Arguments de ligne de commande ? | verso col. 1 → « Squelette de script » | 4 + recto | difficile : le titre ne dit pas `argparse` |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | Pas d'identité de colonne, 27 blocs semblables | librairie + fiche | rail + titre de colonne ; fusionner les petits blocs voisins (Types + Nombres, Console + Fichiers) |
| haute | Catégorie invisible en N&B, police unique | librairie | voir synthèse |
| moyenne | Blancs étirés entre blocs courts | librairie | écarts fixes entre blocs d'un même thème, place restante en bas |
| moyenne | Titres sans le mot-clé cherché | fiche | « Squelette de script » → « Script : argparse, main » |

### Contenu : erreurs et manques

- `python/python_cheat.tex:31` — comparaisons : il manque `>=`.
- `python/python_cheat.tex:242` et `:243` — `open(«f»).read()` sans `with` alors que la fiche recommande `with` : utiliser `Path(«f»).read_text()`.
- Manque : un piège en ligne (`\piege`) aux endroits clés (défaut mutable dans « Fonctions », copie dans « Listes ») ; ils sont tous regroupés au verso.

### Ordonnancement

- « Contrôle » (`if`, `while`, `match`) est en bas de col. 2, après « Compréhensions » qui l'utilisent, et séparé de « Itérer » (`for`, col. 3) : réunir contrôle et boucles dans une même colonne, avant les compréhensions.
- « Console » (`print`, `input`) en bas de col. 1 du recto, « Fichiers texte » en haut du verso : les entrées/sorties sont coupées en deux.

## Points forts à garder

- Contenu exact et orienté ingénieur (rapports de synthèse, subprocess, regex) ; exemple complet utile.
- Commentaires de résultat (`# 255, 5`, `# -4, 1, (3, 2)`) : la réponse se lit sans exécuter.
