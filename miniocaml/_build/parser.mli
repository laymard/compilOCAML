type token =
  | INT of (int)
  | BOOL of (bool)
  | LET
  | EOF
  | END_OF_EXPRESSION
  | LEFT_PAREN
  | RIGHT_PAREN
  | COMMA
  | OPBIN of (Ast.ml_binop)
  | IDENT of (string)

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.ml_expr
