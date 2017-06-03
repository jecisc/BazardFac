CL = -d classes
CLP = -classpath classes

all: jar tst doc run

doc: 
	javadoc -classpath src naval naval.direction -d docs

compNaval:
	javac $(CLP) src/naval/Position.java $(CL)
	javac $(CLP) src/naval/Bateau.java $(CL)
	javac $(CLP) src/naval/Case.java $(CL)
	javac $(CLP) src/naval/Direction.java $(CL)
	javac $(CLP) src/naval/direction/*.java $(CL)
	javac $(CLP) src/naval/Mer.java $(CL)
	javac $(CLP) src/naval/Jeu.java $(CL)

jar: 
	make compNaval
	jar cvfm naval.jar manifest-ex .  -C classes .	

tst:
	javac -classpath test.jar test/*.java
	java -jar test.jar BateauTest
	java -jar test.jar PositionTest
	java -jar test.jar DirectionTest
	java -jar test.jar MerTest

run:	
	java -cp classes naval.Jeu

help: 
	@echo "Cibles disponibles: run, jar, doc, tst, all, "

.PHONY: clean

clean:
	@rm -rf classes/* docs/* test/*.class naval.jar
