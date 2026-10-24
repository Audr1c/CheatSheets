# Audit : verilog_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `verilog` · mesures : [mesures.md](mesures.md) ·
version 1 : [v1/verilog_cheat/rapport.md](../v1/verilog_cheat/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 3 | 2 | 1 | 1 | 1 | 1 | 2 | 11 |
| **v2.1** | 3 | **3** | **3** | **3** | **3** | **2** | **3** | **20** |

## Premier coup d'œil

Barre teal à la puce (sœur de VHDL en vert et d'UVM en violet). Recto : « opérateurs · types »,
« types SystemVerilog », « contrôle · temps » ; verso : « module », « circuits », « simulation ».
Les blocs-fleuves à cinq sous-titres sont découpés ; le diagramme de la FSM reste l'ancre du
verso.

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| Initialiser une mémoire depuis un fichier ? | col. 4 « module » → « Mémoire (RAM, ROM) » | 3 | absent | immédiat |
| Écrire une FSM ? | col. 5 « circuits » → « Machine à états » | 3 | immédiat | immédiat |
| `push_back` sur une file ? | col. 2 « types SV » → « Tableaux » → ■ Files | 3 | difficile (au verso) | immédiat |
| `casez` ou `casex` ? | col. 3 → « Structures de contrôle » (remarque) | 1 | après balayage | après balayage |
| `always_ff` : quelle affectation ? | col. 4 → « Règles de synthèse » | 4 | après balayage | immédiat |

## Corrections faites

| où | correction |
|---|---|
| fiche | testbench : `sig` non déclaré → signaux `a`, `b`, `s` déclarés et utilisés |
| fiche | « Reset asynchrone » : le code est dans la remarque (plus de `\\` hors note) |
| fiche | ajout : `$readmemh` (bloc « Mémoire »), « Règles de synthèse » |
| fiche | « Types utilisateur et agrégés » découpé en « Énumérations et structures » et « Tableaux » ; files et tableaux associatifs au recto avec les types |
| fiche | interfaces avec le testbench (col. 6) ; cast avec les types Verilog (marqué SV) |
| langage | `$readmemh $readmemb $urandom $signed $unsigned` colorés |
| thème | barre colorée (plus d'en-tête « fenêtre ») |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| basse | Col. 4 pleine (1 mm libre) : tout ajout au module devra déplacer un bloc | fiche | — |
| basse | En N&B, types et `$système` se confondent | librairie | voir synthèse |

## Points forts

- Marque `SV` sur ce qui n'existe qu'en SystemVerilog.
- FSM en trois parties commentées + diagramme : modèle repris dans la fiche VHDL.
