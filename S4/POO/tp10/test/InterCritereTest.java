import org.junit.*;
import static org.junit.Assert.*;

import agence.Vehicule;
import agence.Critere;
import agence.InterCritere;
import agence.critere.*;
import java.util.*;

/**
 * Ferlicot-Delbecque Cyril 
 * TP10 -- POO
 * InterCritereTest: Test de la classe InterCritere.
 */
public class InterCritereTest {	

    @Test
    public void testAddCritere() {
	InterCritere liste = new InterCritere();
	Critere cPrix = new CPrix(50);
	
	assertTrue("La liste est non vide ?", liste.isEmpty());

	liste.addCritere(cPrix);

	assertFalse("La liste est vide ?", liste.isEmpty());
    }

    @Test
    public void test() {
	InterCritere liste = new InterCritere();
	Critere cPrix = new CPrix(50);
	Critere cMarq = new CMarque("test");
	Vehicule v = new Vehicule ("marque", "modele", 2014, 42);
	
	liste.addCritere(cPrix);

	assertTrue("Un critere ne passe pas ?", liste.estSatisfaitPar(v));

	liste.addCritere(cMarq);

	assertFalse("Deux critere passe ?", liste.estSatisfaitPar(v));
    }



    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(InterCritereTest.class);
    }

}