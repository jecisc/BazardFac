all: doc jar tst run 

doc: 
	javadoc -classpath src exemple exemple.util -d docs

jar: 	classescomp applicomp

classescomp:
	javac -classpath src src/exemple/Robot.java -d classes

applicomp:
	jar cvfm appli.jar manifest-ex docs test -C classes exemple



tst:	Testcaisse Testrobot

Testcaisse:
	javac -classpath test.jar test/CaisseTest.java

Testrobot:
	javac -classpath test.jar test/RobotTest.java

run:	
	java -jar test.jar CaisseTest
	java -jar test.jar RobotTest
	java -jar appli.jar


help: 
	@echo "Cibles disponibles: all, clean, doc, jar, tst, run, help"

.PHONY: clean

clean:
	rm -rf classes/* docs/* test/*.class appli.jar tmp archive
