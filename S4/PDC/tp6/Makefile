CFLAGS= -W -Wall -ansi -pedantic -g
CC= gcc


all: codage decodage

decodage: decodage.o 
	$(CC) $(CFLAGS) -o decodage decodage.o


codage: codageHuffman.o arbre.o lecture.o
	$(CC) $(CFLAGS) -o codageHuffman codageHuffman.o  arbre.o lecture.o

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	@rm -rf *.o *~ *_huffman codageHuffman
