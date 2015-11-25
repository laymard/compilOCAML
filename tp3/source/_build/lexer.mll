        {
        open Parser        (* The type token is defined in parser.mli *)
        exception Eof
        }
        rule token = parse
            [' ' '\t']     { token lexbuf }     (* skip blanks *)
          | ['\n' ]        { EOL }
	  |"begin"	   {BEGIN}
	  | "end" 	   {END}
          | ['0'-'9']+ as lxm { INT(int_of_string lxm) }
          | '+'            { PLUS }
          | '<'            { INF }
          | '('            { LPAREN }
          | ')'            { RPAREN }
	  | "<-"	   { ARROW }
	  | "and"	   { AND }
	  | ';'		   { PTVIRG }
	  | ','		   { VIRG }
	  | "int"	   {T_INT}
	  |"bool"	   {T_BOOL}
	  |['a'-'z''A'-'Z']['a'-'z''A'-'Z''0'-'9']* as ident{ IDENT(ident)}
          | eof            { raise Eof }