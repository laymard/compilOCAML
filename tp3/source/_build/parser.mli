type token =
  | INT of (int)
  | BEGIN
  | PTVIRG
  | VIRG
  | T_INT
  | T_BOOL
  | ARROW
  | INF
  | AND
  | PLUS
  | LPAREN
  | RPAREN
  | END
  | EOL
  | IDENT of (string)

val bloc :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Abst.bloc
