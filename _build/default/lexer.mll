{
  open Parser
  exception Error of string
}
let espace =[' ' '\t' '\n']
let ident_char =['a'-'z']
let nb =['0'-'9']

rule main = parse
  | espace|";"        {main lexbuf}
  | "Debut"         {DEB}
  | "Fin"           {FIN}
  | "Color"         {COLOR}
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
  | "If"            {IF}
  | "Then"          {THEN}
  | "Else"          {ELSE}
  | "While"          {WHILE}
  | "Do"             {DO}
  | ident_char+ as i    {IDENT i}
  | nb+ as n             {NB (int_of_string n)}
  | eof              {EOF}
  | _               {failwith "unexpected character"}