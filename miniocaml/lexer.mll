{
  open Parser
  let keyword_table = Hashtbl.create 53
  let _ =
    List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
      [
	"let", LET
      ]
}

let space = [' ' '\t']

let letter = ['A'-'Z' 'a'-'z' '_']
let char  = ['0'-'9' 'a'-'z' 'A'-'Z' '_' '\'' '<' '>']
let digit = ['0'-'9']
let binop = ['+' '-' '<' '*' '=']

rule get_token = parse
  | "//" [^'\n']* '\n'? { get_token lexbuf }
  | "/*" ([^'*']|('*'+[^'*''/']))* '*'+ '/' { get_token lexbuf}
  | ['\n' '\r'] { Lexing.new_line lexbuf; get_token lexbuf }
  | ','  { COMMA }
  | '('  { LEFT_PAREN }
  | ')'  { RIGHT_PAREN }
  | ";;" { END_OF_EXPRESSION }
  | '+' {OPBIN(Ml_add)}
  | '=' {OPBIN(Ml_eq)}
  | '-' {OPBIN(Ml_sub)}
  | '*' {OPBIN(Ml_mult)}
  | '<' {OPBIN(Ml_less)}
  | space { get_token lexbuf }
  | digit+ as v { INT (int_of_string v) }
  | "true" {BOOL(true)}
  | "false"  {BOOL(false)}
  | char+  as lxm       { IDENT lxm }
  | eof { EOF }
