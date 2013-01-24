a03:a03.o a03s.o
	gcc -o a03 a03s.o a03.o
a03.o:a03.c
	gcc -c -o a03.o a03.c -I /workarea/cprogram/include/
a03s.o:a03.s
	as -o a03s.o a03.s

