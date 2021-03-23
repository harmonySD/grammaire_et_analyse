%{
open Ast
%}

%token VAR DEB FIN EGAL PLUS MOINS PV TOURNE AVANCE HPINCEAU BPINCEAU EOF LPAR RPAR
%token <int> NB
%token <string> IDENT

%start <Ast.token> programme 
%%

programme:
  d=declarations i=instruction EOF { d i }

declarations:
  VAR IDENT PV d1=declarations { Var Ident Pv d1 }
  | { } 

instruction:
  AVANCE e=expression {Avance e }
  | TOURNE e=expression { Tourne e }
  | BPINCEAU { Bpinceau }
  | HPINCEAU { Hpinceau }
  | IDENT EGAL e=expression { Ident Egal e }
  | DEB b=blocInstruction FIN { Deb b Fin }

blocInstruction:
  i = instruction PV b=blocInstruction { i Pv b }
  | { }

expression:
  NB; eS=expressionSuite { eS }
  | IDENT eS=expressionSuite { Ident eS }
  | LPAR e=expression RPAR eS=expressionSuite { e eS }

expressionSuite:
  PLUS e1=expression { Plus e1 }
  | MOINS e2=expression { Moins e2 }
  | { } 
