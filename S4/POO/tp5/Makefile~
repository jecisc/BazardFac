all: doc jar tst run

doc: 
	javadoc -classpath src hanoi hanoi.utils -d docs


compHanoiUtil:
	javac src/hanoi/utils/Disque.java -d classes
	javac -classpath classes src/hanoi/utils/Tour.java -d classes
	javac -classpath classes src/hanoi/Plateau.java -d classes
	javac -classpath classes src/hanoi/Recursif.java -d classes
	javac -classpath classes src/hanoi/Iteratif.java -d classes
	javac -classpath classes src/hanoi/Interactif.java -d classes



tst :  compTst
	java -jar test.jar DisqueTest
	java -jar test.jar TourTest
	java -jar test.jar PlateauTest

compTst: 
	javac -classpath test.jar test/DisqueTest.java
	javac -classpath test.jar test/TourTest.java
	javac -classpath test.jar test/PlateauTest.java


jar: 	compHanoiUtil	

run:	
	java -classpath classes hanoi.Recursif 6
	java -classpath classes hanoi.Iteratif
	java -classpath classes hanoi.Interactif

help: 
	@echo "Cibles disponibles: all, jar, doc, tst, clean "

.PHONY: clean

clean:
	rm -rf classes/hanoi/* docs/* test/*.class 
