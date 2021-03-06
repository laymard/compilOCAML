%token <int> INT
        %token BEGIN
	%token PTVIRG
	%token VIRG
	%token T_INT
	%token T_BOOL
	%token ARROW
	%token INF
	%token AND
        %token PLUS   
        %token LPAREN RPAREN
	%token END
        %token EOL
	%token <string>IDENT
	%left AND /* moins prioritaire */
	%left INF
	%left PLUS /* plus prioritaire */
        %start  bloc             /* the entry point */
	%type <Abst.bloc> bloc
        %%
        bloc:
           BEGIN sdecl PTVIRG sinst END		{Bloc($2,$4)}
        ;
	
	sdecl:
		decl				{Sdecl2($1)}
		|decl VIRG sdecl		{Sdecl($1,$3)}
	;
	decl:
		typ IDENT			{Decl ($1, Ident($2))}
	;
	typ:	
		T_INT				{Typ("int")}
		|T_BOOL				{Typ("bool")}
	;
	sinst:
		inst				{Sinst2($1)}
		|inst PTVIRG sinst		{Sinst($1,$3)}
	;
	inst:
		bloc				{Inst($1)}
		|IDENT ARROW expr		{Inst2(Ident($1),$3)}
	;
	
	
        expr:
            expr PLUS expr			{Expr($1,Plus,$3)}	
          | expr INF expr      			{Expr($1,Inf,$3)}
          | expr AND expr          		{Expr($1,And,$3)}
          | LPAREN expr RPAREN        		{Expr2($2)}
          | IDENT         			{Expr3(Ident($1))}
          ;
