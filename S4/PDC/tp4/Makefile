CFLAGS= -W -Wall -ansi -pedantic -g
CC= gcc
BASETP2 = fatal.o affiche_entier.o readl.o mcu_wl.o mcu_ww.o mcu_wc.o

all: tp2 wc quick

quick: quicksort.o

tri_dico: tri_dico.o quicksort.o
	$(CC) $(CFLAGS) -o tri_dico tri_dico.o

wc : mon_wc.o $(BASETP2)
	$(CC) $(CFLAGS) -o wc mon_wc.o $(BASETP2)

tp2: $(BASETP2)

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	@rm -rf *.o *~ mcu_wl mcu_wc mcu_ww wc tri_dico
