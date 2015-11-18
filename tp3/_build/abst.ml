type bloc = Bloc of sdecl * sinst
and sdecl = Sdecl of decl * sdecl
	   |Sdecl2 of decl 
and sinst =  Sinst of inst * sinst
	   |Sinst2 of inst
and decl = Decl of typ * ident
and typ=Typ of string
and inst= Inst of bloc
		  |Inst2 of ident * expr
and expr=Expr of expr*op*expr
		 |Expr2 of expr
			  |Expr3 of ident
and ident=Ident of string
and op = Plus | Inf |And;;

let tree = Bloc(
	       Sdecl2(
		   Decl(
		       Typ("int"),
		       Ident("var1")
		     )
		 ),
	       Sinst2(
		   Inst2(
		       Ident("var1"),
		       Expr(
			   Expr3(Ident("var1")),
			   Plus,
			   Expr3(Ident("var1"))
			 )
		     )
		 )
	     );;
	       
(* Arbre correspondant  à begin int var1 ; var1 <- var1 + var1 *)
