all: test mcu_wc mcu_ww mcu_wl mcu_rev mcu_uniq mcu_xxd

mcu_xxd: mcu_xxd.o
	gcc -o mcu_xxd mcu_xxd.o readl.o fatal.o affiche_entier.o -W -g -Wall -ansi -pedantic

mcu_xxd.o: fatal.o readl.o affiche_entier.o
	gcc -o mcu_xxd.o -c mcu_xxd.c -W -g -Wall -ansi -pedantic

mcu_uniq: mcu_uniq.o
	gcc -o mcu_uniq mcu_uniq.o readl.o fatal.o affiche_entier.o -W -g -Wall -ansi -pedantic

mcu_uniq.o: fatal.o readl.o affiche_entier.o
	gcc -o mcu_uniq.o -c mcu_uniq.c -W -g -Wall -ansi -pedantic

mcu_rev: mcu_rev.o
	gcc -o mcu_rev mcu_rev.o readl.o fatal.o affiche_entier.o -W -g -Wall -ansi -pedantic

mcu_rev.o: fatal.o readl.o affiche_entier.o
	gcc -o mcu_rev.o -c mcu_rev.c -W -g -Wall -ansi -pedantic


mcu_wl: mcu_wl.o
	gcc -o mcu_wl mcu_wl.o readl.o fatal.o affiche_entier.o -W -g -Wall -ansi -pedantic

mcu_wl.o: 
	gcc -o mcu_wl.o -c mcu_wl.c -W -g -Wall -ansi -pedantic

mcu_ww: mcu_ww.o
	gcc -o mcu_ww mcu_ww.o affiche_entier.o -W -g -Wall -ansi -pedantic

mcu_ww.o: fatal.o readl.o affiche_entier.o
	gcc -o mcu_ww.o -c mcu_ww.c -W -g -Wall -ansi -pedantic

mcu_wc: mcu_wc.o
	gcc -o mcu_wc mcu_wc.o affiche_entier.o -W -g -Wall -ansi -pedantic

mcu_wc.o: fatal.o readl.o affiche_entier.o
	gcc -o mcu_wc.o -c mcu_wc.c -W -g -Wall -ansi -pedantic

test: test.o
	gcc -o test test.o fatal.o readl.o affiche_entier.o -W -g -Wall -ansi -pedantic

test.o: fatal.o readl.o affiche_entier.o
	gcc -o test.o -c test.c -W -g -Wall -ansi -pedantic

fatal.o: fatal.c mcu_fatal.h mcu_macros.h
	gcc -o fatal.o -c fatal.c -W -g -Wall -ansi -pedantic

readl.o : readl.c mcu_readl.h mcu_macros.h
	gcc -o readl.o -c readl.c -W -g -Wall -ansi -pedantic

affiche_entier.o: affiche_entier.c mcu_affiche_entier.h mcu_macros.h
	gcc -o affiche_entier.o -c affiche_entier.c -W -g -Wall -ansi -pedantic

clean:
	rm *.o  *~  test mcu_wc mcu_ww mcu_wl mcu_xxd mcu_uniq mcu_rev

