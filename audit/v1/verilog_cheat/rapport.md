# Audit : verilog_cheat (2026-10-24)

Thème : `verilog` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 3 | 2 | 1 | 1 | 1 | 1 | 2 | 11 |

## Premier coup d'œil

Barre « fenêtre » claire, peu d'identité. Blocs très longs (« Types utilisateur et agrégés » :
5 sous-titres sur toute la colonne) : on lit une longue liste plutôt qu'on ne repère. La
col. 1 du recto est la plus terne du projet (8 % d'encre colorée). Le schéma de FSM du verso
est le seul repère visuel.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| `==` ou `===` ? | recto col. 1 → « Opérateurs » | 1 | immédiat |
| Écrire une FSM ? | verso col. 2 → « Machine à états » (schéma) | 6 | immédiat grâce au schéma |
| Tableau dynamique (`new[]`) ? | recto col. 2 → « Types utilisateur » → 4e sous-titre | 5 | difficile : enfoui dans un long bloc |
| Format `%0d` de `$display` ? | verso col. 3 → « Testbench » → sous-titre | 7 + recto | après balayage |
| `push_back` sur une file ? | verso col. 3 → « Files et tableaux associatifs » | 9 + recto | difficile : attendu au recto avec les types |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | En-tête « fenêtre » pâle | thème | barre colorée propre au HDL |
| haute | Pas d'identité de colonne, catégorie invisible en N&B, police unique | librairie | voir synthèse |
| haute | Blocs-fleuves à 5 sous-titres : les sous-titres (même taille que le code) ne servent pas de repère | fiche + librairie | couper en blocs (Énumérations, Structures, Tableaux) ; sous-titres plus visibles |
| moyenne | Écart de densité : col. 1 recto à 11 mm libres, col. 2 à 1,5 mm | fiche | rééquilibrer |

### Contenu : erreurs et manques

- `Verilog/verilog_cheat.tex:406` — `sig` n'est pas déclaré dans le testbench : ajouter `logic sig;` ou utiliser `a`.
- `Verilog/verilog_cheat.tex:340` — la note « Reset asynchrone : » est suivie d'un saut de ligne manuel hors de la note : mettre le code dans la note ou dans le listing.
- Manque : `$readmemh` / `$readmemb` (initialiser une mémoire), très utilisé en TP.

### Ordonnancement

- « Files et tableaux associatifs » (types) est au verso, colonne simulation : leur place logique est au recto avec les autres types (manque de place → réduire « Types utilisateur »).
- « Interfaces » (verso col. 1, catégorie `tb`) est sous le module et le bloquant / non bloquant : la placer avec le testbench, ou avec l'instanciation.

## Points forts à garder

- Tableau des opérateurs très complet et aligné, marque `SV` pour ce qui n'existe qu'en SystemVerilog.
- FSM avec schéma + code en 3 parties commentées : modèle à suivre pour les autres fiches.
- Paire Verilog / UVM sans doublon.
