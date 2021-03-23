{
  open Parser
}
let espace =[' ' '\t' '\n']
let ident_char =[a-z]
let nb =[0-9]

rule main = parse
  | espace          {main lexbuf}
  | "Debut"         {DEB}
  | "Fin"           {Fin}
  | "+"             {PLUS}
  | "-"             {MOINS}
  | "Var"           {VAR}
  | "("             {LPAREN}
  | ")"             {RPAREN}
  | "HautPinceau"   {HPINCEAU}
  | "BasPinceau"    {BPINCEAU}
  | "Tourne"        {TOURNE}
  | "Avance"        {AVANCE}
  | ";"             {PV}
  | "="             {EGAL}
  | ident_char+     {IDENT Lexing.lexeme lexbuf}
  | nb+             {NB Lexing.lexeme lexbuf}
  | _               {failwith "unexpected character"}