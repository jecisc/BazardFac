import org.junit.*;
import static org.junit.Assert.*;

import calculette.Postfixee;

/**
 * Ferlicot-Delbecque Cyril 
 * TP9 -- POO
 * PostfixeeTest: Test de la classe Postfixee
 */
public class PostfixeeTest {	

    @Test
    public void testGetValeurCourante() {
	Postfixee pile = new Postfixee();
	
	assertTrue("Valeur de base n'est pas 0?", pile.getValeurCourante() == 0);

	pile.enfoncerChiffre(5);

	assertTrue("Valeur non changée ?", pile.getValeurCourante() == 5);
    }

    @Test
    public void testEnfoncerChiffre() {
	Postfixee pile = new Postfixee();
	pile.enfoncerChiffre(5);

	assertTrue("Valeur non changé au premier ?", pile.getValeurCourante() == 5);

	pile.enfoncerChiffre(7);

	assertTrue("Valeur non/mal changée en second ?", pile.getValeurCourante() == 57);       
    }

    @Test
    public void testEnfoncerPlus() {
	Postfixee pile = new Postfixee();
	Postfixee pile2 = new Postfixee();
	pile.enfoncerChiffre(5);
	pile.enfoncerEgal();
	pile.enfoncerChiffre(3);
	pile.enfoncerPlus();
	
	assertTrue("Addition simple ne marche pas ?", pile.getValeurCourante() == 8);

	pile2.enfoncerChiffre(3);
	pile2.enfoncerPlus();

	assertTrue("Erreur non prise en compte", pile2.getValeurCourante() == 3 );		
    }

    @Test
    public void testEnfoncerMoins() {
	Postfixee pile = new Postfixee();
	Postfixee pile2 = new Postfixee();
	pile.enfoncerChiffre(5);
	pile.enfoncerEgal();
	pile.enfoncerChiffre(3);
	pile.enfoncerMoins();
	
	assertTrue("Soustraction simple ne marche pas ?", pile.getValeurCourante() == 2);

	pile2.enfoncerChiffre(3);
	pile2.enfoncerPlus();

	assertTrue("Erreur non prise en compte en soustraction", pile2.getValeurCourante() == 3 );
	
    }

    @Test
    public void testEnfoncerMult() {
	Postfixee pile = new Postfixee();
	Postfixee pile2 = new Postfixee();
	pile.enfoncerChiffre(5);
	pile.enfoncerEgal();
	pile.enfoncerChiffre(3);
	pile.enfoncerMult();
	
	assertTrue("Multiplication simple ne marche pas ?", pile.getValeurCourante() == 15);

	pile2.enfoncerChiffre(3);
	pile2.enfoncerMult();

	assertTrue("Erreur non prise en compte", pile2.getValeurCourante() == 0 );
	
    }

    @Test
    public void testEnfoncerDiv() {
	Postfixee pile = new Postfixee();
	Postfixee pile2 = new Postfixee();
	pile.enfoncerChiffre(6);
	pile.enfoncerEgal();
	pile.enfoncerChiffre(3);
	pile.enfoncerDiv();
	
	assertTrue("Division simple ne marche pas ?", pile.getValeurCourante() == 2);

	pile2.enfoncerChiffre(3);
	pile2.enfoncerDiv();

	assertEquals("Erreur non prise en compte", pile2.getValeurCourante(), 0 );
	
    }

    @Test
    public void testEnfoncerEgal() {
	Postfixee pile = new Postfixee();
	pile.enfoncerChiffre(6);
	pile.enfoncerEgal();

	assertTrue("Egal réalisé ?", pile.getValeurCourante() == 0);
	
    }

    @Test
    public void testenfoncerDel() {
	Postfixee pile = new Postfixee();
	pile.enfoncerChiffre(6);
	pile.enfoncerDel();

	assertTrue("Del utilisé ?", pile.getValeurCourante() == 0);
    }

    @Test
    public void testEnfoncerRaz() {
	Postfixee pile = new Postfixee();
	pile.enfoncerChiffre(6);
	pile.enfoncerEgal();
	pile.enfoncerChiffre(6);
	pile.enfoncerRaz();

	assertTrue("Raz utilisé ?", pile.getValeurCourante() == 0);
    }




    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(PostfixeeTest.class);
    }

}