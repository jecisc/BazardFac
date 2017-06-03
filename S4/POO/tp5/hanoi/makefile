.PHONY: test
compile:
	javac -sourcepath src -classpath drawing.jar  -encoding ISO-8859-1 src/hanoi/*.java -d classes
run:
	java -cp classes hanoi.ChoixHanoi
doc:
	cd src/hanoi;javadoc -d ../../docs  -encoding ISO-8859-1 HanoiR.java HanoiI.java HanoiJ.java Plateau.java ChoixHanoi.java util/Tour.java util/Disque.java

test:
	javac -classpath -encoding ISO-8859-1 test.jar test/*.java
	java -jar test.jar DisqueTest
	java -jar test.jar TourTest
	java -jar test.jar PlateauTest
jar:
	make compile
	jar cvfm hanoi.jar manifest-ex .  -C classes .
	
help:
	@echo src/hanoi/util : la tour est implementee avec java.util.Stack et java.util.Iterator
	@echo src/hanoi/util2 : la tour est implementee avec une liste chainee de disques
	@echo src/hanoi/util3 : la tour est implementee avec un tableau de disques
	@echo "il suffit de renommer util en util1 puis util2 (respectivement util3) en util et de recompiler"
	@echo pour tester les aures versions
	
clean:
	$(RM) -rf drawing
	$(RM) -rf hanoi
	$(RM) -rf META-INF
	$(RM) -rf classes/hanoi
	
allclean:
	make clean
	$(RM) -rf docs/*
	$(RM) -f test/*.class
	
