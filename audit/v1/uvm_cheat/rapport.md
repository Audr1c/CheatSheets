# Audit : uvm_cheat (2026-10-24)

Thème : `uvm` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |

## Premier coup d'œil

Barre « fenêtre » claire : la page n'a pas de couleur dominante, l'en-tête se fond dans le
reste. Le schéma d'architecture du verso est le seul point d'accroche, et il fonctionne :
on comprend tout de suite où vont sequencer, driver, monitor. Le recto est un mur de code dense
(11 sous-titres colorés, même taille que le texte). Encre colorée faible au recto.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Distribution pondérée (`dist`) ? | recto col. 2 → « Variables aléatoires » → sous-titre | 3 | après balayage |
| `\|->` ou `\|=>` ? | recto col. 3 → « Assertions (SVA) » | 6 | après balayage, puis tableau clair |
| Ordre des phases ? | verso col. 1 → « Phases » | 2 | immédiat |
| Passer l'interface virtuelle au driver ? | verso col. 3 « Assemblage » (top) + col. 2 « Driver » (note) | 9 | difficile : réponse éclatée en deux blocs |
| Bins de transition ? | recto col. 3 → « Couverture fonctionnelle » → sous-titre | 5 | après balayage |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | En-tête « fenêtre » pâle : pas d'identité de fiche | thème | barre colorée (comme C / Python / Git), couleur propre à la vérification |
| haute | Pas d'identité de colonne, catégorie invisible en N&B, police unique | librairie | voir synthèse |
| moyenne | Monitor et Scoreboard classés `sva` (assertions) : la couleur ment | fiche | catégorie `uvm` ou une nouvelle catégorie « observation » |
| moyenne | Sous-titres `//` à la même taille que le code : se confondent avec les commentaires | librairie | sous-titres distincts du code (taille, filet) |

### Contenu : erreurs et manques

- `UVM/uvm_cheat.tex:160` à `:162` — les fractions 3/8 et 1/8 ne valent que si `en = 1` : le préciser.
- `UVM/uvm_cheat.tex:434` — `byte exp_q[$]` reçoit `t.data` sur 32 bits : troncature silencieuse ; écrire `exp_q.push_back(t.data[7:0])` pour la montrer.
- Manque : récupération de `vif` dans le `build_phase` du driver (ligne 387 l'évoque en `«…»`) : c'est la question la plus fréquente en TP, à écrire en entier.

### Ordonnancement

- « Métriques de couverture » (recto col. 1, sous les classes) est séparée de « Couverture fonctionnelle » (col. 3) : les réunir en col. 3.

## Points forts à garder

- Schéma d'architecture UVM : la meilleure ancre visuelle hors fiche Git.
- Verso bien découpé (architecture / stimulus / observation).
- Exemple APB cohérent d'un bloc à l'autre (item → séquence → driver → monitor → scoreboard).
