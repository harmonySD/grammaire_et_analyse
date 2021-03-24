%{
open Ast
%}

%token VAR DEB FIN EGAL PLUS MOINS TOURNE AVANCE HPINCEAU BPINCEAU EOF LPAR RPAR
%token <int> NB
%token <string> IDENT

%right PLUS
%right MOINS

%start <Ast.programme> programme 
%%

programme:
  d=declarations i=instruction EOF { Prog (d,i) }

declarations:
  VAR id=IDENT  listdec=declarations{ id::listdec }
  | {[]} 

instruction:
  AVANCE e=expression { Avance e }
  | TOURNE e=expression { Tourne e }
  | BPINCEAU { BasPinceau }
  | HPINCEAU { HautPinceau }
  | id=IDENT EGAL e=expression { Egal(id,e) }(*Var (id,e*)
  | DEB b=blocInstruction FIN { Debut b }

blocInstruction:
  i = instruction  b=blocInstruction { i::b }
  | {[]}

expression:
  n = NB    {Nombre n}
  | id = IDENT { Var id }
  | e1 = expression PLUS e2 = expression    {Plus (e1,e2)}
  | e1 = expression MOINS e2 = expression   {Moins (e1,e2)}
  | LPAR e=expression RPAR { e }
