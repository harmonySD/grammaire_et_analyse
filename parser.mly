%{
open Ast
%}

%token VAR DEB FIN EGAL PLUS MOINS TOURNE AVANCE HPINCEAU BPINCEAU EOF LPAR RPAR
%token <int> NB
%token <string> IDENT

%right PLUS
%right MOINS

%start <Ast.programme> s 
%%

s: p=programme EOF {p}

programme:
  d=declarations* DEB i=blocInstruction* FIN {(d,i) } 

declarations:
  VAR id=IDENT  { id }

instruction:
  AVANCE e=expression { Avance e }
  | TOURNE e=expression { Tourne e }
  | BPINCEAU { BasPinceau }
  | HPINCEAU { HautPinceau }
  | id=IDENT EGAL e=expression { Egal(id,e) }

blocInstruction:
  i = instruction  b=blocInstruction { i::b }
  | {[]}

expression:
  n = NB    {Nombre n}
  | id = IDENT { Var id }
  | e1 = expression PLUS e2 = expression    {Plus (e1,e2)}
  | e1 = expression MOINS e2 = expression   {Moins (e1,e2)}
  | LPAR e=expression RPAR { e }
