{
  open Parser
}
let espace =[' ' '\t' '\n']
let ident_char =['a'-'z']
let nb =['0'-'9']

rule main = parse
  | espace|";"        {main lexbuf}
  | "Debut"         {DEB}
  | "Fin"           {FIN}
  | "+"             {PLUS}
  | "-"             {MOINS}
  | "Var"           {VAR}
  | "("             {LPAR}
  | ")"             {RPAR}
  | "HautPinceau"   {HPINCEAU}
  | "BasPinceau"    {BPINCEAU}
  | "Tourne"        {TOURNE}
  | "Avance"        {AVANCE}
  | "="             {EGAL}
  | ident_char+ as i    {IDENT i}
  | nb+ as n             {NB (int_of_string n)}
  | eof              {EOF}
  | _               {failwith "unexpected character"}