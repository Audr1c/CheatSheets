# Synthèse de l'audit des fiches (2026-10-24)

Protocole : skill `audit-fiche` (mesures automatiques + rendu couleur / N&B / flou + test des
5 questions + relecture du contenu). Détail par fiche : `audit/<nom>/rapport.md` (version
actuelle, librairie 2.1) et `audit/v1/<nom>/rapport.md` (audit initial ; ses numéros de ligne
renvoient aux fiches v1, consultables dans l'historique git).

## Après migration : librairie v2.1 (toutes les fiches)

Toutes les fiches sont passées sur la librairie 2.1 ; la v1 (fiches et librairie) a été
retirée. Mesures : **0 alerte automatique sur les 8 fiches** (0 débordement, 0 collision,
0 ligne trop longue, 0 ligne de code coupée, 0 glyphe manquant, contrastes conformes).

| fiche | contenu | ordre | repérage | police | couleur | N&B | mise en page | v1 → **v2.1** |
|---|---|---|---|---|---|---|---|---|
| c_cheat | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 10 → **20** |
| cpp_cheat | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 10 → **20** |
| git_cheat | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 15 → **20** |
| python_cheat | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 11 → **20** |
| python_avance | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 12 → **20** |
| uvm_cheat | 3 | 2 | 3 | 3 | 3 | 2 | 3 | 12 → **19** |
| verilog_cheat | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 11 → **20** |
| vhdl_cheat | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 12 → **20** |

Test des 5 questions (mêmes questions posées aux deux versions) : 34 réponses « immédiat » sur
40 (v1 : 12), aucune « absente » (v1 : 6 — gdb, `$readmemh`, `textio`, `vif` du driver,
workflow d'équipe, piège `if s then` : des manques relevés par l'audit v1 et comblés).

### Corrections communes faites dans la librairie pendant la migration

Chacune règle un défaut pour toutes les fiches, présentes et futures :

| règle | défaut corrigé |
|---|---|
| puces de tableau | une étiquette de moins de 4 mm (`·`, numéros de priorité) garde sa largeur au lieu de prendre 16 mm |
| `coches{n}` | tableau étiquette · n colonnes centrées · remarque, mesuré (remplace le `tabular` manuel de Git) |
| `\etiquettecolonne` | le thème choisit le texte de l'étiquette de colonne (Git : icône de branche + nom) |
| R6 fer à gauche complet | plus aucun espace étiré entre les mots, même quand un long `\V|…|` ne tient pas |
| `optab` sans `[..]` | le 1er `\V|…|` du tableau n'est plus lu hors verbatim (erreur `Missing $` sur `a_b`) |
| audit | le script compte les lignes de code coupées (↪) et les signale |

### Ce qui reste

| gravité | problème | où |
|---|---|---|
| basse | En N&B, types et intégrés (même graisse normale, couleurs de même gris) se confondent : c'est la seule note à 2 partout | librairie : types en italique, ou intégrés soulignés |
| moyenne | UVM : métriques de couverture séparées du `covergroup` (recto plein) | fiche : alléger « Classes et objets » |
| basse | 15 à 19 mm libres dans quelques colonnes (C col. 2 et 4, Python col. 3 et 6, VHDL col. 3 et 6) | fiches : exemples à ajouter si besoin |

---

## Audit initial (v1)

### Notes (0 à 3 par critère)

| fiche | contenu | ordre | repérage | police | couleur | N&B | mise en page | total /21 |
|---|---|---|---|---|---|---|---|---|
| **git_cheat** | 2 | 2 | **3** | 1 | **2** | **2** | **3** | **15** |
| python_avance | 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |
| uvm_cheat | 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |
| vhdl_cheat | 3 | 2 | 2 | 1 | 1 | 1 | 2 | 12 |
| python_cheat | 3 | 2 | 1 | 1 | 1 | 1 | 2 | 11 |
| verilog_cheat | 3 | 2 | 1 | 1 | 1 | 1 | 2 | 11 |
| c_cheat | 2 | 2 | 1 | 1 | 1 | 1 | 2 | 10 |
| cpp_cheat | 2 | 2 | 1 | 1 | 1 | 1 | 2 | 10 |

**Le contenu est bon partout** (2 ou 3) : le problème est la présentation. Les critères
visuels (repérage, couleur, N&B) sont à 1 pour toutes les fiches sauf Git, et la police à 1
pour toutes : ces défauts viennent de la librairie commune, pas des fiches.

## Pourquoi Git est plus lisible

Mesuré, pas seulement ressenti :

| | Git | autres fiches |
|---|---|---|
| encre colorée par colonne | 28 – 34 % | 8 – 28 % (médiane ≈ 19 %) ; VHDL approche Git par sa coloration syntaxique, sans en avoir la structure |
| colonnes nommées | 6 / 6 (`main`, `fix/annuler`…) | 0 |
| schémas | 11 | 0 ou 1 |
| icône d'onglet | colorée par catégorie | noire, identique partout |
| en N&B | rails et formes restent | tout devient le même gris |

Git donne trois niveaux de repère : **colonne** (rail + nom), **bloc** (icône colorée, schéma),
**ligne** (étiquettes en gras). Les autres fiches n'ont que le dernier : il faut lire les
titres un par un, et 3 à 5 des questions du test demandent un balayage (voire échouent).

## Problèmes communs → corrections dans la librairie

Classés par effet attendu sur la lisibilité. Une correction ici améliore les 8 fiches.

| # | gravité | problème | correction proposée | effort |
|---|---|---|---|---|
| L1 | haute | Aucune identité de colonne (sauf Git) | Généraliser le rail + l'étiquette de colonne de Git dans `fiche.sty` : `colonne[titre][couleur]` pour toutes les fiches ; chaque fiche nomme ses colonnes (« types · opérateurs », « contrôle », « mémoire »…) | moyen |
| L2 | haute | Catégorie signalée par un liseré de 2 pt, invisible en N&B ; 5 couleurs sur 6 donnent le même gris | Onglet rempli de la couleur de catégorie (texte blanc) **et** une icône propre à chaque catégorie (forme visible en N&B), définie dans le thème | faible |
| L3 | haute | Aucune hiérarchie typographique : titres de bloc à 7,4 pt contre 6,95 pt de texte, sous-titres `// …` à la taille du code, prose et code dans la même police à chasse fixe | Titres de bloc ≈ 9 pt ; sous-titres sur fond `paper` ou avec filet ; **décision à prendre** : police proportionnelle pour la prose (ex. IBM Plex Sans, qui va avec une mono) en gardant Hurmit pour le code et les titres | faible à moyen |
| L4 | moyenne | Commentaires (3,9:1) et chaînes (3,6:1) sous le seuil de 4,5:1 : les explications du code sont dans la couleur la plus pâle | Assombrir `mk-grey` (≈ `6B6567`) et `mk-yellow` (≈ `A35E00`) | très faible |
| L5 | moyenne | En N&B, mots-clés / types / intégrés = même gris gras | Différencier aussi par le style : mots-clés gras, types gras italique, intégrés normaux | très faible |
| L6 | moyenne | Numéros de ligne dans chaque listing : bruit visuel, 3,4 mm de largeur perdus par listing | Les retirer (ou les garder seulement sur option) ; la largeur gagnée permet un corps plus grand | très faible |
| L7 | moyenne | Écarts entre blocs étirés au hasard (colonnes « justifiées ») : ils ne montrent aucun groupe | Écarts fixes et courts entre blocs d'un même thème, espace restant en bas de colonne | faible |
| L8 | moyenne | En-tête « fenêtre » pâle pour Verilog, UVM, VHDL : pas d'identité de fiche | Barre colorée dans `theme-verilog`, `theme-uvm`, `theme-vhdl` (comme C, Python, Git) | faible |
| L9 | basse | Ancres visuelles rares hors Git | Un schéma par fiche au moins là où il y a une question récurrente (déjà fait : FSM, conversions VHDL, architecture UVM) | par fiche |

## Problèmes propres aux fiches (contenu et ordre)

| fiche | à corriger en priorité |
|---|---|
| C | `free` « jamais après usage » (formulation fausse) ; `-std=c99` vs nouveautés C23 ; réunir bibliothèque standard et `<string.h>` |
| C++ | exemple de *slicing* qui ne compile pas (classe abstraite) ; `const` + `operator=` ; manque la sémantique de déplacement ; `vtable` avant le polymorphisme |
| Git | reflog : 30 jours (pas 90) pour un commit inaccessible ; `bisect` et « Historique » mal placés |
| Python | `>=` absent ; `open()` sans `with` ; contrôle et boucles séparés, contrôle après les compréhensions |
| Python avancé | commentaire « avec read » sur la mauvaise ligne ; `match` dans la colonne itérateurs |
| UVM | métriques et couverture fonctionnelle séparées ; monitor/scoreboard en catégorie « assertions » ; `vif` du driver en `«…»` |
| Verilog | `sig` non déclaré ; blocs-fleuves à 5 sous-titres ; files et tableaux associatifs au verso |
| VHDL | « Afficher des valeurs » loin du testbench ; littéraux loin des types |

## Ordre de travail conseillé

1. **L4, L5, L6** (quelques lignes dans `fiche.sty`, aucun risque) puis recompiler et relancer
   les mesures : contraste et N&B s'améliorent partout.
2. **L2 et L3** (onglets et hiérarchie) : tester sur une fiche (C, la plus basse), comparer
   avec l'audit, puis étendre. Le choix de police proportionnelle est à valider avant.
3. **L1 et L8** : demande de nommer les colonnes de chaque fiche, donc de revoir leur
   ordre ; faire en même temps les corrections d'ordonnancement des rapports.
4. Corrections de contenu, fiche par fiche (un commit chacune).
5. Relancer `audit-fiche` sur chaque fiche pour vérifier le gain (objectif : repérage,
   couleur et N&B à 2 ou plus, encre colorée ≥ 25 % par colonne).
