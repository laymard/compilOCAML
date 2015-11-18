type token =
  | IDENT of (string)
  | LPAR
  | RPAR
  | LBR
  | RBR
  | COMMA
  | ARROW

open Parsing;;
let _ = parse_error;;
# 2 "grammarParser.mly"
 type simple_grammar = string list *  string list * string * (string * string list) list
# 15 "grammarParser.ml"
let yytransl_const = [|
  258 (* LPAR *);
  259 (* RPAR *);
  260 (* LBR *);
  261 (* RBR *);
  262 (* COMMA *);
  263 (* ARROW *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\005\000\005\000\003\000\004\000\006\000\006\000\
\007\000\008\000\008\000\000\000"

let yylen = "\002\000\
\009\000\003\000\003\000\001\000\001\000\003\000\003\000\001\000\
\003\000\002\000\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\012\000\000\000\000\000\000\000\000\000\
\000\000\000\000\002\000\000\000\003\000\000\000\005\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\
\006\000\000\000\000\000\009\000\007\000\010\000"

let yydgoto = "\002\000\
\004\000\006\000\016\000\019\000\008\000\021\000\022\000\028\000"

let yysindex = "\001\000\
\001\255\000\000\000\255\000\000\004\255\002\255\003\255\005\255\
\000\255\004\255\000\000\006\255\000\000\010\255\000\000\007\255\
\011\255\013\255\014\255\255\254\015\255\012\255\000\000\018\255\
\000\000\013\255\018\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\016\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\017\255\000\000\251\254\
\000\000\000\000\251\254\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\254\255\000\000\000\000\006\000\253\255\000\000\255\255"

let yytablesize = 26
let yytable = "\011\000\
\011\000\001\000\003\000\005\000\007\000\024\000\012\000\009\000\
\010\000\011\000\015\000\014\000\017\000\020\000\018\000\013\000\
\023\000\026\000\027\000\025\000\004\000\008\000\029\000\000\000\
\000\000\030\000"

let yycheck = "\005\001\
\006\001\001\000\002\001\004\001\001\001\007\001\009\000\006\001\
\006\001\005\001\001\001\006\001\006\001\001\001\004\001\010\000\
\003\001\006\001\001\001\005\001\005\001\005\001\026\000\255\255\
\255\255\027\000"

let yynames_const = "\
  LPAR\000\
  RPAR\000\
  LBR\000\
  RBR\000\
  COMMA\000\
  ARROW\000\
  "

let yynames_block = "\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : 'set_br) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'set_br) in
    let _6 = (Parsing.peek_val __caml_parser_env 3 : 'axiom) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'prod_br) in
    Obj.repr(
# 11 "grammarParser.mly"
                                                              ( _2,_4,_6,_8 )
# 97 "grammarParser.ml"
               : string list *  string list *  string * (string * string list) list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'set) in
    Obj.repr(
# 13 "grammarParser.mly"
                     ( _2 )
# 104 "grammarParser.ml"
               : 'set_br))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'set) in
    Obj.repr(
# 17 "grammarParser.mly"
                   ( _1 :: _3 )
# 112 "grammarParser.ml"
               : 'set))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 18 "grammarParser.mly"
          ( [_1] )
# 119 "grammarParser.ml"
               : 'set))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 21 "grammarParser.mly"
              ( _1 )
# 126 "grammarParser.ml"
               : 'axiom))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'prods) in
    Obj.repr(
# 24 "grammarParser.mly"
                         (_2)
# 133 "grammarParser.ml"
               : 'prod_br))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'production) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'prods) in
    Obj.repr(
# 28 "grammarParser.mly"
                               ( _1 :: _3 )
# 141 "grammarParser.ml"
               : 'prods))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'production) in
    Obj.repr(
# 29 "grammarParser.mly"
                    ( [_1] )
# 148 "grammarParser.ml"
               : 'prods))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'id_list) in
    Obj.repr(
# 33 "grammarParser.mly"
                                 ( (_1,_3) )
# 156 "grammarParser.ml"
               : 'production))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'id_list) in
    Obj.repr(
# 35 "grammarParser.mly"
                        ( _1 ::  _2 )
# 164 "grammarParser.ml"
               : 'id_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "grammarParser.mly"
              ( [] )
# 170 "grammarParser.ml"
               : 'id_list))
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : string list *  string list *  string * (string * string list) list)
