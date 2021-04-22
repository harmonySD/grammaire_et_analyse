%{
open Ast
%}

%token VAR DEB FIN EGAL PLUS MOINS TOURNE AVANCE COLOR
%token HPINCEAU BPINCEAU EOF LPAR RPAR IF THEN ELSE
%token WHILE DO MULT DIV 
%token <int> NB
%token <string> IDENT

%left PLUS
%left MOINS
%left MULT
%left DIV



%start <Ast.programme> s 
%%

s: p=programme EOF {p}

programme:
  d=declarations* DEB i=instruction* FIN {(d,i) } 

declarations:
  VAR id=IDENT  { id }

instruction:
  AVANCE e=expression { Avance e }
  | DEB i=instruction* FIN  {Bloc(i)}
  | TOURNE e=expression { Tourne e }
  | BPINCEAU { BasPinceau }
  | HPINCEAU { HautPinceau }
  | id=IDENT EGAL e=expression { Egal(id,e) }
  | IF e=expression THEN i=instruction ELSE i2=instruction {Ite(e,i,i2)} 
  | WHILE e=expression DO i=instruction   {While(e,i)}
  | COLOR LPAR r=NB g=NB b=NB RPAR {Color(r,g,b)}


expression:
  | n = NB    {Nombre n}
  | id = IDENT { Ident id }
  | e1 = expression PLUS e2 = expression    {Plus (e1,e2)}
  | e1 = expression MOINS e2 = expression   {Moins (e1,e2)}
  | MOINS n= NB     {Mun n}
  | e1 = expression MULT e2 = expression    {Mult (e1,e2)}
  | e1 = expression DIV e2 = expression    {Div (e1,e2)}
  | LPAR e=expression RPAR { e }
