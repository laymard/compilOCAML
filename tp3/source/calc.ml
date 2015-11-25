open Parser;;

let _ =
          try
            let lexbuf = Lexing.from_channel stdin in
              let result = Parser.bloc Lexer.token lexbuf in
          with Lexer.Eof ->
            exit 0
