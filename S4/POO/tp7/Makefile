DES = -d classes
CHE = -classpath classes
CC = javac
RUN = java -cp classes
DOC = javadoc -classpath src
JAR = jar cvfm

all:  compImage tst doc run

doc: 
	$(DOC) image image.color -d docs

compImage:
	$(CC) $(CHE) src/image/color/*.java $(DES)
	$(CC) $(CHE) src/image/*.java $(DES)

jar: 	
	make compImage
	$(JAR) image.jar manifest-ex .  -C classes .

tst:	
	$(CC) -classpath test.jar test/*.java
	java -jar test.jar GrayColorTest
	java -jar test.jar PixelTest
	java -jar test.jar ImageTest

run:	compImage
	$(RUN) image.MainImage /images/fruit.pgm 15 16

runExempleImage: 
	$(RUN) image.ExempleImage

help: 
	@echo "Cibles disponibles: doc, run, compImage, tst, runExempleImage, clean "

.PHONY: clean

clean:
	@rm -rf classes/image/* docs/* test/*.class *~ src/image/*~
