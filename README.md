# ProjetGAL_Harmony_Clement
### Equipe
Simon-Duchatel Harmony, n°etu: **71802495**

Blérald Clément, n°etu: **71800092**
****
## Compilation

### Dans le dossier code

Pour compiler:

```> make```

Pour clean:

```> make clean```

## Exécution

```>./main.exe < fichier_test ```

*Avec fichier_test contient les instructions en pseudo logo ex : batman, TestAngle*

Pour afficher l'arbre de syntaxe abstraitre, decommenter la permiere partie du main.
****

## Répartition du travail

- Clément : interpreter.ml, Typecheck.ml ( + gestion des erreurs), extension couleur
- Harmony : lexer.mll, parser.mly ( + vérification LR(1)), ast.ml, Typecheck.ml, extension si alors, extension epaisseur

## Méthode de travail

- Etape 1 : évaluations des tâches
- Etape 2 : partages des tâches
- Etape 3 : sprint (entraide au besoin via discord)
- Etape 4 : retour à l'étape 1

## Extensions
- **Si alors**
- **Changer la couleur** , syntaxe : ChangeCouleur r g b (int avec 0 <= r,g,b <= 255)
- **Changer l'épaisseur**, syntaxe : ChangeEpaisseur i (avec i:int)

## Architecture

```Bash
.
├── Code
│   ├── ast.ml
│   ├── dune
│   ├── dune-project
│   ├── interpreter.ml
│   ├── lexer.mll
│   ├── main.ml
│   ├── Makefile
│   ├── parser.mly
│   └── typecheck.ml
├── README.md
└── Tests
    ├── batman
    ├── cercle
    ├── fleur
    ├── fleur2
    ├── TestAngle
    ├── TestAngleEtParent
    ├── TestBords
    ├── TestCouleur
    ├── TestDiv0
    ├── TestEOF
    ├── TestH
    ├── TestIfThen
    ├── TestIfThenElse
    ├── TestParent
    ├── TestPv
    ├── TestSyntErr
    ├── TestVar
    └── TestWhile    
```
