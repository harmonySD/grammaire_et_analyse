%{
open Token
%}

%token VAR DEB FIN EGAL PLUS MOINS PV TOURNE AVANCE HPINCEAU BPINCEAU EOF LPAR RPAR
%token <int> NB
%token <string> IDENT

%start <Token.token> programme 
%%

programme:
  d = declarations; i=instruction; EOF { d i }

declarations:
  VAR; IDENT; PV; d1=declarations { VAR IDENT PV d1 }
  | { } 

instruction:
  AVANCE; e=expression {AVANCE e }
  | TOURNE; e=expression { TOURNE, e }
  | BPINCEAU { BPINCEAU }
  | HPINCEAU { HPINCEAU }
  | IDENT; EGAL; e=expression { IDENT EGAL e }
  | DEB; b=blocInstruction; FIN { DEB b FIN }

blocInstruction:
  i = instruction; PV; b=blocInstruction { i PV b }
  | { }

expression:
  NB; eS=expressionSuite { eS }
  | IDENT; eS=expressionSuite { IDENT eS }
  | LPAR; e=expression; RPAR; eS=expressionSuite { e eS }

expressionSuite:
  PLUS; e1 = expression; MOINS; e2=expression { e1 e2 }
  | { } 
