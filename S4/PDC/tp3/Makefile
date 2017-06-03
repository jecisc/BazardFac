OPTIONS = -W -Wall -pedantic -ansi -g 

all: quick_test nomine

quick_test: quick_test.o quicksort.o tab_alea.o
	gcc $(OPTIONS) -o $@ $^

quicksort: quicksort.o 
	gcc $(OPTIONS) -o $@ 

nomine: nomine.c
	gcc -W -Wall -pedantic -ansi -g -o nomine.o -c nomine.c


%.o: %.c %.h
	gcc $(OPTIONS) -o $@ -c $<

clean:
	@rm -f *.o  *~ quicksort quick_test

