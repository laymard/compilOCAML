open Ast
open Value

exception Error of string

let eval_unop op arg = match op with
  | Ml_fst _ -> begin match arg with 
		  |(Val_int i, _) -> Val_int(i)
                  |(Val_bool b,_) -> Val_bool(b)
                  |(Val_pair(c,d),_) -> Val_pair(c,d)
		  |(Val_cons(e,f),_) -> Val_cons(e,f)
                  |(Val_nil,_) -> Val_nil
                end
  | Ml_snd _ -> begin match arg with 
		  |(_,Val_int i) -> Val_int(i)
                  |(_,Val_bool b) -> Val_bool(b)
                  |(_,Val_pair(c,d)) -> Val_pair(c,d)
		  |(_,Val_cons(e,f)) -> Val_cons(e,f)
                  |(_,Val_nil) -> Val_nil
                end
 |_ -> raise (Error "Mauvais type !")

let rec testEgalite a b = match a,b with
  | Val_int x, Val_int y -> Val_bool(x=y)
  | Val_bool x, Val_bool y -> Val_bool(x=y)
  | Val_pair (i, j), Val_pair (k,l) -> testEgalite (testEgalite i k) (testEgalite j l)
  | Val_cons (i,j), Val_cons (k,l) -> testEgalite (testEgalite i k) (testEgalite j l)
  | Val_nil , Val_nil -> Val_bool(true)
  | _ -> raise (Error "Types incompatibles pour l'opération binaire")

let eval_binop op arg1 arg2 = match op with
  | Ml_add  -> begin match arg1,arg2 with
		  | (Val_int a, Val_int b) -> Val_int(a+b)
		  | _ -> raise (Error "Incompatible!")
	        end
  | Ml_sub -> begin match arg1,arg2 with
		  | (Val_int a, Val_int b) -> Val_int(a-b)
		  | _ -> raise (Error "Incompatbile!")
	        end
  | Ml_mult -> begin match arg1,arg2 with
		  | (Val_int a, Val_int b) -> Val_int(a*b)
		  | _ -> raise (Error "Incompatible!")
	        end
  | Ml_eq -> begin testEgalite arg1 arg2
	     end
  | Ml_less -> begin match arg1,arg2 with
		  | (Val_int a, Val_int b) -> Val_bool(a<b)
		  | _ -> raise (Error "Incompatible")
	        end
  | _ -> raise (Error "Type non compatible")

let rec pattern_matching pattern value =
  match pattern, value with
    | Ml_pattern_var v, i -> [(v,i)]
    | Ml_pattern_bool b, Val_bool b1 -> if b1=b then [] else failwith "error"
    | Ml_pattern_int i, Val_int i1 -> if i1=i then [] else failwith "error"
    | Ml_pattern_pair (a1,b1), Val_pair(a2,b2) -> (pattern_matching a1 a2)@(pattern_matching b1 b2)
    | Ml_pattern_nil, Val_nil -> []
    | Ml_pattern_cons (x1,y1), Val_cons(x2,y2) -> (pattern_matching x1 x2)@(pattern_matching y1 y2)

let rec tryfind f = function
  | [] -> raise Not_found
  | hd :: tl -> try f hd with _ -> tryfind f tl

let rec eval env = function
  | Ml_int n -> Val_int n
  | Ml_bool b -> Val_bool b
  | Ml_binop (op,arg1,arg2) -> eval_binop op (eval env arg1) (eval env arg2)
  | _ -> raise (Error "not implemented yet!")
