DES = -d classes
CHE = -classpath classes
CC = javac
RUN = java -cp classes
DOC = javadoc -classpath src
JAR = jar cvfm
TST= java -jar test.jar

all: jar doc tst run

doc:  
	$(DOC) agence -d docs	

compAgence:
	$(CC) $(CHE) src/agence/Vehicule.java $(DES)
	$(CC) $(CHE) src/agence/Critere.java $(DES)
	$(CC) $(CHE) src/agence/critere/*.java $(DES)
	$(CC) $(CHE) src/agence/Client.java $(DES)
	$(CC) $(CHE) src/agence/InterCritere.java $(DES)
	$(CC) $(CHE) src/agence/Agence.java $(DES)
	$(CC) $(CHE) src/agence/Voiture.java $(DES)
	$(CC) $(CHE) src/agence/Moto.java $(DES)
	$(CC) $(CHE) src/agence/AgenceMefiante.java $(DES)
	$(CC) $(CHE) src/agence/AgenceMain.java $(DES)


jar: 	
	make compAgence
	$(JAR) Agence.jar manifest-ex . -C classes .

tst:
	$(CC) -classpath test.jar test/*.java
	$(TST) VehiculeTest
	$(TST) InterCritereTest		
	$(TST) AgenceTest		

run:	
	$(RUN) agence.AgenceMain

help: 
	@echo "Cibles disponibles: all, doc, compAgence (compile toutes les sources), jar, tst, run (run AgenceMain), clean"

.PHONY: clean

clean:
	@rm -rf classes/* docs/* test/*.class *~ */*~ */*/*~ */*/*/*~ Agence.jar
