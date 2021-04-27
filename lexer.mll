{
  open Parser
  exception Error of string
}
let espace =[' ' '\t' '\n']
let ident_char =['a'-'z']
let ident_char_suite =['a'-'z''A'-'Z''0'-'9']
let nb_sauf_zero =['1'-'9']
let nb =['0'-'9']

rule main = parse
  | espace|";"        {main lexbuf}
  | "Debut"         {DEB}
  | "Fin"           {FIN}
  | "Color"         {COUL}
  | "+"             {PLUS}
  | "-"             {MOINS}
  | "*"             {MULT}
  | "/"             {DIV}
  | "Var"           {VAR}
  | "("             {LPAR}
  | ")"             {RPAR}
  | "HautPinceau"   {HPINCEAU}
  | "BasPinceau"    {BPINCEAU}
  | "Tourne"        {TOURNE}
  | "Avance"        {AVANCE}
  | "="             {EGAL}
  | "Si"            {SI}
  | "Alors"          {ALORS}
  | "Sinon"          {SINON}
  | "Tant que"          {TANTQ}
  | "Faire"             {FAIRE}
  | "ChangeCouleur"           {COUL}
  | "ChangeEpaisseur"   {EP}
  | ident_char ident_char_suite* as i    {IDENT i}
  | nb_sauf_zero nb* | '0' as n             {NB (int_of_string n)}
  | eof              {EOF}
  | _             {failwith ("mot inconnu")}