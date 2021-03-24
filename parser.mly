%{
open Ast
%}

%token VAR DEB FIN EGAL PLUS MOINS PV TOURNE AVANCE HPINCEAU BPINCEAU EOF LPAR RPAR TOKEN
%token <int> NB
%token <string> IDENT

%start <Ast.expression> programme 
%%

programme:
  d=declarations i=instruction EOF { d i }

declarations:
  VAR i=IDENT PV d1=declarations { (Var (Identificateur(i))) d1 }
  
instruction:
  AVANCE e=expression { Avance e }
  | TOURNE e=expression { Tourne e }
  | BPINCEAU { BasPinceau }
  | HPINCEAU { HautPinceau }
  | i=IDENT EGAL e=expression { Egal(i,e) }
  | DEB b=blocInstruction FIN { Debut b }

blocInstruction:
  i=instruction PV b=blocInstruction { i b }
 
expression:
  NB eS=expressionSuite { eS }
  | IDENT eS=expressionSuite { eS }

expressionSuite:
  PLUS e=expression { Plus e }
  | MOINS e=expression { Moins e }
 