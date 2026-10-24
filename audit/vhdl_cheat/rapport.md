# Audit : vhdl_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `vhdl` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/vhdl_cheat/rapport.md](../v1/vhdl_cheat/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |
| **v2.1** | 3 | **3** | **3** | **3** | **3** | **2** | **3** | **20** |

## Premier coup d'œil

Barre verte à la puce. Recto : « structure », « types · littéraux », « opérateurs ·
instructions » ; verso : « circuits », « hiérarchie · FSM », « simulation ». Deux ancres :
le schéma des conversions `numeric_std` (recto) et le diagramme de la FSM (verso, nouveau).

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| `std_logic_vector` vers `integer` ? | col. 2 → schéma des conversions | 1 | immédiat | immédiat |
| Lire des stimuli dans un fichier ? | col. 6 « simulation » → « Testbench » → ■ textio | 1 | absent | immédiat |
| Pourquoi `if s then` est refusé ? | col. 6 → « Pièges » | 2 | absent | après balayage |
| Afficher une valeur en simulation ? | col. 6 → « Testbench » → ■ Afficher | 1 | difficile (col. 5, loin du testbench) | immédiat |
| Additionneur N bits avec `generate` ? | col. 5 → « Instancier » → ■ Répliquer | 1 | immédiat | immédiat |

## Corrections faites

| où | correction |
|---|---|
| fiche | ajout : lecture de fichier (`std.textio`), piège `std_logic` / `boolean` |
| fiche | littéraux avec les types ; attributs avec les instructions (boucles `'range`) |
| fiche | « Afficher des valeurs » dans le testbench ; « Trois états » dans la logique combinatoire ; additionneur `generate` dans « Instancier » |
| fiche | diagramme d'états de la FSM ; doublon « plus simple : `unsigned(a) + unsigned(b)` » remplacé par un renvoi aux conversions |
| langage | `file text line readline read endfile read_mode…` colorés |
| thème | barre colorée (plus d'en-tête « fenêtre ») |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | 18 mm libres en col. 3 et en col. 6 | fiche | `wait on` et `after` dans un exemple ; `generic` de testbench |
| basse | En N&B, types et intégrés se confondent | librairie | voir synthèse |

## Points forts

- Pièges concrets et justes ; même gabarit et mêmes exemples que Verilog (compteur, FSM, RAM).
