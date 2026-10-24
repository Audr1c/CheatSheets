# Audit : vhdl_cheat (2026-10-24)

Thème : `vhdl` · mesures : [mesures.md](mesures.md)

## Notes

| contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|
| 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |

## Premier coup d'œil

Colonnes du recto assez thématiques (structure / types / instructions) et un schéma de
conversions qui attire l'œil au bon endroit. L'en-tête « fenêtre » pâle et les 24 blocs de
même aspect gardent pourtant l'impression de mur uniforme ; le verso, fait de petits exemples
similaires, est le plus difficile à parcourir.

## Test des 5 questions

| question | chemin | titres lus | résultat |
|---|---|---|---|
| Convertir `std_logic_vector` → `integer` ? | recto col. 2 → « Conversions » (schéma) | 7 | immédiat grâce au schéma |
| Reset asynchrone ? | verso col. 1 → « Registre N bits » | 2 + recto | après balayage |
| Afficher une valeur en simulation ? | verso col. 2 → « Afficher des valeurs » (dernier bloc) | 9 + recto | difficile : loin du « Testbench » (col. 3) |
| Syntaxe `with … select` ? | recto col. 3 → « Instructions concurrentes » | 10 | après balayage |
| Attribut `'range` ? | recto col. 2 → « Attributs » | 8 | après balayage |

## Problèmes

| gravité | problème | où | correction proposée |
|---|---|---|---|
| haute | En-tête « fenêtre » pâle | thème | barre colorée propre au VHDL |
| haute | Pas d'identité de colonne, catégorie invisible en N&B, police unique | librairie | voir synthèse |
| moyenne | Verso : 9 petits exemples de même aspect, sans regroupement visible | fiche | colonnes nommées (« combinatoire / séquentiel », « hiérarchie », « simulation ») ; fusionner « Trois états » dans un autre bloc |

### Contenu : erreurs et manques

- Pas d'erreur relevée.
- Manque : lecture de fichier en testbench (`textio` / `std.textio`) et `std_logic` vers `boolean` (`= '1'`) dans les pièges de comparaison.

### Ordonnancement

- « Littéraux et agrégats » (recto col. 3) est loin des types (col. 2) : les rapprocher.
- « Afficher des valeurs » (verso col. 2) doit rejoindre « Testbench » (col. 3).
- « Opérateurs » en tête de col. 3 avant les instructions : logique, mais il manque un titre de colonne pour le dire.

## Points forts à garder

- Schéma des conversions `numeric_std` : réponse visuelle à la question la plus fréquente.
- Pièges concrets et justes (`and`/`or` sans parenthèses, signal / variable, pilotes multiples).
- Bonne cohérence avec la fiche Verilog (mêmes exemples : compteur, FSM, RAM).
