# ProjetGAL_Harmony_Clement

## Compilation

### Dans le dossier code

- make pour compiler
- make clean pour clean

## Exécution

- ./main.exe < fichier_test  (fichier_test contient les instructions en pseudo logo ex : batman, TestAngle)

## Répartition du travail

- Clément : interpreter.ml, Typecheck.ml
- Harmony : lexer.mll, parser.mly, ast.ml, Typecheck.ml

## Méthode de travail

- Etape 1 : évaluations des tâches
- Etape 2 : partages des tâches
- Etape 3 : sprint (aide au besoin via discord)
- Etape 4 : retour à l'étape 1

## Architecture

```

├── code
│   ├── ast.ml
│   ├── dune
│   ├── dune-project
│   ├── interpreter.ml
│   ├── lexer.mll
│   ├── main.ml
│   ├── Makefile
│   ├── parser.mly
│   └── typecheck.ml
├── README.md
└── Tests
    ├── batman
    ├── TestAngle
    ├── TestBords
    ├── TestDiv0
    ├── TestEOF
    ├── TestH
    ├── TestParent
    ├── TestSyntErr
    └── TestVar
```
