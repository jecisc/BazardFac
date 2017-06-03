DES = -d classes
CHE = -classpath classes
CC = javac
RUN = java -cp classes
DOC = javadoc -classpath src
JAR = jar cvfm
TST= java -jar test.jar

all: jar doc tst run 

doc: 
	 $(DOC) calculette -d docs	

compCalc:
	$(CC) $(CHE) src/util/*.java $(DES)	
	$(CC) $(CHE) src/calculette/Operation.java $(DES)
	$(CC) $(CHE) src/calculette/operation/*.java $(DES)
	$(CC) $(CHE) src/calculette/Calculette.java $(DES)
	$(CC) $(CHE) src/calculette/Postfixee.java $(DES) -Xlint:unchecked
	$(CC) $(CHE) src/calculette/Infixe.java $(DES)
	$(CC) $(CHE) src/calculette/TexteCalculette.java $(DES)
	$(CC) $(CHE) src/calculette/VueCalculette.java $(DES)
	$(CC) $(CHE) src/calculette/Calculatrice.java $(DES)

jar: 	
	make compCalc
	$(JAR) Calculatrice.jar manifest-ex . -C classes .

tst:
	$(CC) -classpath test.jar test/*.java
	$(TST) PostfixeeTest	
	$(TST) InfixeTest	

run:	
	$(RUN) calculette.Calculatrice TP

help: 
	@echo "Cibles disponibles: all, doc, compCalc (compile tous les fichiers du package Calc), tst (à utiliser après compCalc), clean, run  "

.PHONY: clean

clean:
	@rm -rf classes/* docs/* test/*.class *~ */*~ */*/*~ */*/*/*~ Calculatrice.jar
