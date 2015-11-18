(** [token] is the type of the different lexical units. *)
type token = UL_UNIT (* TODO : Replace unit by the relevant type *)
             | UL_EOF 

(** [is_eof] : token  -> bool
    is_eof tk returns true if the lexical unit represents the end_of file.
*)
let is_eof = function
  | UL_EOF -> true
  | _      -> false

(** [print_token] : out_channel -> token -> unit
    print_token o tk prints on the output channel o the textual representation of the token tk *)
let print_token o = function
  | UL_UNIT -> Printf.fprintf o "()" (* TODO : Replace () by the relevant case analysis *)
  | UL_EOF  -> Printf.fprintf o "eof"

