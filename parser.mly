%token <int> NB
%token <string> IDENT
%token VAR
%token DEB
%token FIN
%token EGAL
%token PLUS
%token MOINS
%token PV
%token TOURNE
%token AVANCE
%token HPINCEAU 
%token BPINCEAU
%token EOF
%start <int> programme


%%
declarations :
  VAR; i1= IDENT; PV ;d1= declarations  {Var i1 ; d1}
  |

programme :
  e= declarations; instruction; EOF
