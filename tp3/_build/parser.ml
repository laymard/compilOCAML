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

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  258 (* BEGIN *);
  259 (* PTVIRG *);
  260 (* VIRG *);
  261 (* T_INT *);
  262 (* T_BOOL *);
  263 (* ARROW *);
  264 (* INF *);
  265 (* AND *);
  266 (* PLUS *);
  267 (* LPAREN *);
  268 (* RPAREN *);
  269 (* END *);
  270 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  271 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\005\000\005\000\003\000\003\000\
\006\000\006\000\007\000\007\000\007\000\007\000\007\000\000\000"

let yylen = "\002\000\
\005\000\001\000\003\000\002\000\001\000\001\000\001\000\003\000\
\001\000\003\000\003\000\003\000\003\000\003\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\016\000\005\000\006\000\000\000\000\000\
\000\000\000\000\000\000\004\000\000\000\009\000\000\000\000\000\
\003\000\000\000\001\000\000\000\000\000\015\000\000\000\008\000\
\000\000\000\000\000\000\000\000\014\000\000\000\000\000\011\000"

let yydgoto = "\002\000\
\014\000\007\000\015\000\008\000\009\000\016\000\023\000"

let yysindex = "\002\000\
\004\255\000\000\030\255\000\000\000\000\000\000\007\255\013\255\
\005\255\254\254\030\255\000\000\020\255\000\000\025\255\034\255\
\000\000\246\254\000\000\254\254\246\254\000\000\021\255\000\000\
\016\255\246\254\246\254\246\254\000\000\023\255\024\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\027\255\
\000\000\000\000\000\000\000\000\000\000\000\000\001\255\000\000\
\000\000\000\000\000\000\000\000\000\000\255\254\006\255\000\000"

let yygindex = "\000\000\
\040\000\031\000\023\000\000\000\000\000\000\000\251\255"

let yytablesize = 43
let yytable = "\003\000\
\021\000\012\000\001\000\010\000\022\000\003\000\012\000\012\000\
\013\000\010\000\012\000\012\000\013\000\010\000\013\000\025\000\
\011\000\013\000\013\000\012\000\030\000\031\000\032\000\026\000\
\027\000\028\000\018\000\029\000\026\000\027\000\028\000\026\000\
\028\000\028\000\005\000\006\000\020\000\019\000\002\000\007\000\
\004\000\017\000\024\000"

let yycheck = "\002\001\
\011\001\003\001\001\000\003\001\015\001\002\001\008\001\009\001\
\003\001\003\001\012\001\013\001\015\001\013\001\009\001\021\000\
\004\001\012\001\013\001\015\001\026\000\027\000\028\000\008\001\
\009\001\010\001\007\001\012\001\008\001\009\001\010\001\008\001\
\010\001\010\001\005\001\006\001\003\001\013\001\003\001\013\001\
\001\000\011\000\020\000"

let yynames_const = "\
  BEGIN\000\
  PTVIRG\000\
  VIRG\000\
  T_INT\000\
  T_BOOL\000\
  ARROW\000\
  INF\000\
  AND\000\
  PLUS\000\
  LPAREN\000\
  RPAREN\000\
  END\000\
  EOL\000\
  "

let yynames_block = "\
  INT\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'sdecl) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'sinst) in
    Obj.repr(
# 22 "parser.mly"
                                         (Bloc(_2,_4))
# 120 "parser.ml"
               : Abst.bloc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'decl) in
    Obj.repr(
# 26 "parser.mly"
          (Sdecl2(_1))
# 127 "parser.ml"
               : 'sdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sdecl) in
    Obj.repr(
# 27 "parser.mly"
                    (Sdecl(_1,_3))
# 135 "parser.ml"
               : 'sdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 30 "parser.mly"
              (Decl (_1, Ident(_2)))
# 143 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
           (Typ("int"))
# 149 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "parser.mly"
             (Typ("bool"))
# 155 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'inst) in
    Obj.repr(
# 37 "parser.mly"
          (Sinst2(_1))
# 162 "parser.ml"
               : 'sinst))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'inst) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sinst) in
    Obj.repr(
# 38 "parser.mly"
                      (Sinst(_1,_3))
# 170 "parser.ml"
               : 'sinst))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Abst.bloc) in
    Obj.repr(
# 41 "parser.mly"
          (Inst(_1))
# 177 "parser.ml"
               : 'inst))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 42 "parser.mly"
                     (Inst2(Ident(_1),_3))
# 185 "parser.ml"
               : 'inst))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 47 "parser.mly"
                             (Expr(_1,Plus,_3))
# 193 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 48 "parser.mly"
                                  (Expr(_1,Inf,_3))
# 201 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 49 "parser.mly"
                                     (Expr(_1,And,_3))
# 209 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 50 "parser.mly"
                                        (Expr2(_2))
# 216 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 51 "parser.mly"
                             (Expr3(Ident(_1)))
# 223 "parser.ml"
               : 'expr))
(* Entry bloc *)
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
let bloc (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Abst.bloc)
