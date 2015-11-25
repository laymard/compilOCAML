%{
  open Ast
%}

%token <int> INT
%token <bool> BOOL
%token LET
%token EOF END_OF_EXPRESSION
%token LEFT_PAREN RIGHT_PAREN
%token COMMA
%token <Ast.ml_binop> OPBIN
%token <string> IDENT
%left LESS /* moins prioritaire */
%left INF
%left EGAL
%left PLUS
%left SUB
%left MULT
%start main
%type <Ast.ml_expr> main
%%

main:
 | EOF { Printf.printf "\nbye"; exit 0 }
 | expr END_OF_EXPRESSION { $1 }
 | error {
    let bol = (Parsing.symbol_start_pos ()).Lexing.pos_bol in
    failwith ("parsing: line " ^ 
		 (string_of_int ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)) ^ 
		 " between character " ^
		 (string_of_int (Parsing.symbol_start () - bol)) ^
		 " and " ^
		 (string_of_int ((Parsing.symbol_end ()) + 1 - bol)))
 }

expr:
| simple_expr { $1 }
| application { List.fold_left (fun res a -> Ml_app(res, a)) (List.hd $1) (List.tl $1) }
| expr OPBIN expr {Ml_binop ($2, $1, $3)} 
/*TODO*/

simple_expr:
| INT { Ml_int $1 }
| BOOL {Ml_bool $1}
| IDENT {Ml_var $1}
/* TODO */

application:
 | simple_expr_or_parenthesized_expr simple_expr_or_parenthesized_expr application_next { $1 :: $2 :: $3 }

simple_expr_or_parenthesized_expr:
 | simple_expr { $1 }
 | LEFT_PAREN expr COMMA expr RIGHT_PAREN { Ml_pair($2, $4) }
 | LEFT_PAREN expr RIGHT_PAREN { $2 }

application_next:
 | simple_expr_or_parenthesized_expr application_next { $1 :: $2 }
 | { [] }
