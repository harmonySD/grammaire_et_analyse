%{
open Ast
%}

%token VAR DEB FIN EGAL PLUS MOINS TOURNE AVANCE COUL EP
%token HPINCEAU BPINCEAU EOF LPAR RPAR SI ALORS SINON
%token TANTQ FAIRE MULT DIV PV
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
  VAR id=IDENT PV { id }

instruction:
  AVANCE e=expression PV{ Avance e }
  | DEB i=instruction* FIN  {Bloc(i)}
  | TOURNE e=expression PV{ Tourne e }
  | BPINCEAU PV{ BasPinceau }
  | HPINCEAU PV{ HautPinceau }
  | id=IDENT EGAL e=expression PV{ Egal(id,e) }
  | SI e=expression ALORS i=instruction PV {Sialors(e,i)}
  | SI e=expression ALORS i=instruction SINON i2=instruction PV {Sias(e,i,i2)} 
  | TANTQ e=expression FAIRE i=instruction  PV {Tantq(e,i)}
  | COUL r=NB g=NB b=NB  PV{Couleur(r,g,b)}
  | EP t=NB PV {Epaisseur t}

expression:
  | n = NB    {Nombre n}
  | id = IDENT { Ident id }
  | e1 = expression PLUS e2 = expression    {Plus (e1,e2)}
  | e1 = expression MOINS e2 = expression   {Moins (e1,e2)}
  | MOINS n= NB     {Mun n}
  | e1 = expression MULT e2 = expression    {Mult (e1,e2)}
  | e1 = expression DIV e2 = expression    {Div (e1,e2)}
  | LPAR e=expression RPAR { e }
