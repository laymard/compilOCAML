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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Ast
# 18 "parser.ml"
let yytransl_const = [|
  259 (* LET *);
    0 (* EOF *);
  260 (* END_OF_EXPRESSION *);
  261 (* LEFT_PAREN *);
  262 (* RIGHT_PAREN *);
  263 (* COMMA *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* BOOL *);
  264 (* OPBIN *);
  265 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\002\000\002\000\002\000\003\000\003\000\
\003\000\004\000\005\000\005\000\005\000\006\000\006\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\001\000\001\000\003\000\001\000\001\000\
\001\000\003\000\001\000\005\000\003\000\002\000\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\003\000\007\000\008\000\001\000\000\000\009\000\
\016\000\000\000\000\000\005\000\000\000\000\000\002\000\000\000\
\011\000\000\000\013\000\000\000\000\000\000\000\010\000\000\000\
\014\000\012\000"

let yydgoto = "\002\000\
\009\000\010\000\011\000\012\000\013\000\023\000"

let yysindex = "\003\000\
\001\000\000\000\000\000\000\000\000\000\000\000\022\255\000\000\
\000\000\002\255\000\000\000\000\022\255\033\255\000\000\022\255\
\000\000\022\255\000\000\022\255\253\254\022\255\000\000\020\255\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\013\255\000\000\000\000\000\000\000\000\000\000\
\000\000\026\255\000\000\000\000\031\255\026\255\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\249\255\245\255\000\000\246\255\250\255"

let yytablesize = 266
let yytable = "\014\000\
\006\000\017\000\018\000\001\000\016\000\015\000\017\000\022\000\
\021\000\016\000\017\000\022\000\024\000\011\000\011\000\025\000\
\004\000\011\000\004\000\004\000\004\000\011\000\004\000\005\000\
\000\000\026\000\007\000\016\000\000\000\015\000\008\000\015\000\
\015\000\015\000\006\000\000\000\006\000\006\000\019\000\020\000\
\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\003\000\004\000\005\000\000\000\000\000\007\000\000\000\000\000\
\000\000\008\000"

let yycheck = "\007\000\
\000\000\013\000\013\000\001\000\008\001\004\001\018\000\018\000\
\016\000\008\001\022\000\022\000\020\000\001\001\002\001\022\000\
\004\001\005\001\006\001\007\001\008\001\009\001\001\001\002\001\
\255\255\006\001\005\001\008\001\255\255\004\001\009\001\006\001\
\007\001\008\001\004\001\255\255\006\001\007\001\006\001\007\001\
\008\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\000\001\001\001\002\001\255\255\255\255\005\001\255\255\255\255\
\255\255\009\001"

let yynames_const = "\
  LET\000\
  EOF\000\
  END_OF_EXPRESSION\000\
  LEFT_PAREN\000\
  RIGHT_PAREN\000\
  COMMA\000\
  "

let yynames_block = "\
  INT\000\
  BOOL\000\
  OPBIN\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 24 "parser.mly"
       ( Printf.printf "\nbye"; exit 0 )
# 162 "parser.ml"
               : Ast.ml_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 25 "parser.mly"
                          ( _1 )
# 169 "parser.ml"
               : Ast.ml_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 26 "parser.mly"
         (
    let bol = (Parsing.symbol_start_pos ()).Lexing.pos_bol in
    failwith ("parsing: line " ^ 
		 (string_of_int ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)) ^ 
		 " between character " ^
		 (string_of_int (Parsing.symbol_start () - bol)) ^
		 " and " ^
		 (string_of_int ((Parsing.symbol_end ()) + 1 - bol)))
 )
# 183 "parser.ml"
               : Ast.ml_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 37 "parser.mly"
              ( _1 )
# 190 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'application) in
    Obj.repr(
# 38 "parser.mly"
              ( List.fold_left (fun res a -> Ml_app(res, a)) (List.hd _1) (List.tl _1) )
# 197 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.ml_binop) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 39 "parser.mly"
                  (Ml_binop (_2, _1, _3))
# 206 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 43 "parser.mly"
      ( Ml_int _1 )
# 213 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 44 "parser.mly"
       (Ml_bool _1)
# 220 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 45 "parser.mly"
        (Ml_var _1)
# 227 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 49 "parser.mly"
                                                                                        ( _1 :: _2 :: _3 )
# 236 "parser.ml"
               : 'application))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 52 "parser.mly"
               ( _1 )
# 243 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 53 "parser.mly"
                                          ( Ml_pair(_2, _4) )
# 251 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 54 "parser.mly"
                               ( _2 )
# 258 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 57 "parser.mly"
                                                      ( _1 :: _2 )
# 266 "parser.ml"
               : 'application_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
   ( [] )
# 272 "parser.ml"
               : 'application_next))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.ml_expr)
