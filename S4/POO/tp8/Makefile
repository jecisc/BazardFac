DES = -d classes
CHE = -classpath classes
CC = javac
RUN = java -cp classes
DOC = javadoc -classpath src
JAR = jar cvfm
TST= java -jar test.jar

all: jar doc tst run

doc:
	 $(DOC) pfc -d docs

compPfc:	
	$(CC) $(CHE) src/pfc/util/Input.java $(DES)
	$(CC) $(CHE) src/pfc/Pfc.java $(DES)
	$(CC) $(CHE) src/pfc/Strategie.java $(DES)
	$(CC) $(CHE) src/pfc/strategie/*.java $(DES)
	$(CC) $(CHE) src/pfc/Joueur.java $(DES)
	$(CC) $(CHE) src/pfc/Partie.java $(DES)

jar: 	
	make compPfc
	$(JAR) pfc.jar manifest-ex . -C classes .

tst:
	$(CC) -classpath test.jar test/*.java
	$(TST) JoueurTest	
	$(TST) PfcTest

run:	
	$(RUN) pfc.Partie 5

help: 
	@echo "Cibles disponibles: all, doc, compPfc (compile tous les fichiers du package pfc), tst (à utiliser après compPfc), clean, run "

.PHONY: clean

clean:
	@rm -rf classes/* docs/* test/*.class *~ */*~ */*/*~ */*/*/*~ pfc.jar
