# Audit : python_avance (2026-10-24)

Thème : `python` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |

## Premier coup d'œil

Mêmes défauts visuels que la fiche de base, mais des colonnes plus thématiques (itérer /
fonctions / objets au recto, concurrence groupée au verso) : on devine les zones après
lecture de quelques titres. Aucun schéma ; aucun piège en ligne.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Décorateur avec paramètres ? | recto col. 2 → « Décorateurs » | 7 | après balayage, puis évident |
| Lancer 32 simulations en parallèle ? | verso col. 2 → « concurrent.futures » | 5 + recto | immédiat (colonne concurrence) |
| Rendre un objet utilisable avec `with` ? | verso col. 1 → « Context managers » (ou recto « Méthodes spéciales ») | 1 + recto | après balayage : deux endroits |
| Vérifier qu'une exception est levée (pytest) ? | verso col. 3 → « Tests avec pytest » | 9 + recto | après balayage |
| Fonction générique typée ? | verso col. 1 → « Annotations de type » | 2 + recto | après balayage |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | Pas d'identité de colonne ni d'ancre visuelle | librairie | rail + titre de colonne ; un schéma (ex. choix thread / processus / asyncio en arbre de décision) |
| haute | Catégorie invisible en N&B, police unique | librairie | voir synthèse |
| basse | « Threads ou processus ? » est un tableau de décision en texte | fiche | le dessiner (petit arbre) : ancre visuelle de la colonne |

### Contenu : erreurs et manques

- `python/python_avance.tex:275` et `:276` — commentaires « tout objet » / « avec read » coupés sur deux lignes, le second tombe sur `gen()` qui n'a rien à voir : écrire « tout objet avec `.read()` » sur la ligne de `charger`.
- `python/python_avance.tex:309` — préciser que Python 3.13 propose une version sans GIL (expérimentale), pour ne pas vieillir.

### Ordonnancement

- « match : motifs avancés » est en col. 1 (itérateurs) : il relève du contrôle, à mettre avec les fonctions ou en tête de colonne.
- « Context managers » (verso) et `__enter__`/`__exit__` (recto, « Méthodes spéciales ») : renvoyer de l'un à l'autre, ou réunir.

## Points forts à garder

- Exemples réalistes du métier (simulations `vsim`, seeds, rapports).
- Colonne « concurrence » cohérente, avec la règle de choix en tête.
- Pièges avancés bien ciblés (générateur épuisé, `await` oublié).
