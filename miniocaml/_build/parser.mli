type token =
  | INT of (int)
  | BOOL of (bool)
  | LET
  | EOF
  | END_OF_EXPRESSION
  | LEFT_PAREN
  | RIGHT_PAREN
  | COMMA

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.ml_expr
