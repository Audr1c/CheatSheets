# Audit : uvm_cheat — librairie v2.1 (2026-10-24)

Librairie `librairie` (version 2.1) · thème `uvm` (= Verilog + catégories de vérification) ·
mesures : [mesures.md](mesures.md) · version 1 : [v1/uvm_cheat/rapport.md](../v1/uvm_cheat/rapport.md)

## Notes : v1 → v2.1

| | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| v1 | 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |
| **v2.1** | 3 | 2 | **3** | **3** | **3** | **2** | **3** | **19** |

## Premier coup d'œil

Barre violette « vérification » à l'insecte (l'en-tête « fenêtre » pâle a disparu), colonnes
« classes », « aléatoire », « couverture · SVA » au recto, « architecture », « stimulus »,
« observation · assemblage » au verso. Le schéma d'architecture UVM ouvre le verso ; le
monitor et le scoreboard ont leur propre catégorie (œil vert) au lieu de celle des assertions.

## Test des 5 questions

| question | chemin | titres lus | v1 | v2.1 |
|---|---|---|---|---|
| Récupérer `vif` dans le driver ? | col. 5 « stimulus » → « Driver » | 3 | absent (« «…» ») | immédiat |
| `|->` ou `|=>` ? | col. 3 → « Assertions (SVA) » (tableau) | 2 | immédiat | immédiat |
| Bins d'une transition d'états ? | col. 3 → « Couverture » → ■ Transitions | 1 | immédiat | immédiat |
| Lancer une séquence depuis le test ? | col. 4 → « Phases » → squelette du test | 2 | après balayage | immédiat |
| Code 100 %, fonctionnelle 80 % : que faire ? | col. 1 → « Métriques de couverture » | 2 | après balayage | après balayage |

## Corrections faites

| où | correction |
|---|---|
| fiche | `build_phase` du driver écrite en entier (`uvm_config_db::get`, `uvm_fatal`) |
| fiche | `randcase` : « 3/8 si en = 1, 3/4 sinon » |
| fiche | scoreboard : `exp_q.push_back(t.data[7:0])` (troncature visible) |
| fiche | test complet : `seq` déclarée, créée, randomisée et lancée dans `run_phase` |
| thème | barre colorée propre à la vérification ; catégorie `obs` pour monitor et scoreboard |

## Problèmes restants

| gravité | problème | où | correction proposée |
|---|---|---|---|
| moyenne | « Métriques de couverture » (bas de col. 1) séparée de « Couverture fonctionnelle » (col. 3) : le recto est plein, aucune autre place n'a la bonne taille | fiche | renvoi « covergroup : colonne 3 » ajouté ; vraie solution : alléger « Classes et objets » (134 mm) de ~40 mm |
| basse | En N&B, types (`uvm_*`) et macros se confondent | librairie | voir synthèse |

## Points forts

- Exemple APB suivi d'un bloc à l'autre (item → séquence → driver → monitor → scoreboard → top).
- Le driver et le top se répondent : `set` dans `tb_top`, `get` dans le driver.
