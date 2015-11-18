{
  open Ulex (* Ulex contains the type definition of lexical units *)
}
rule token = parse (* TODO *)
   | ['0']   { UL_UNIT}
   | eof     { UL_EOF }
