all:
	flex lex.l
	gcc lex.yy.c
	./a.out