type token =
  | IDENT of (string)
  | LPAR
  | RPAR
  | LBR
  | RBR
  | COMMA
  | ARROW

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string list *  string list *  string * (string * string list) list
