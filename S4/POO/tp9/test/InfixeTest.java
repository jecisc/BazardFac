import org.junit.*;
import static org.junit.Assert.*;
import calculette.Infixe;

/**
 * Lesage Yann
 * TP09 -- POO
 * test de la classe infice
 */
public class InfixeTest {	

    @Test
    public void testPlus() {
	Infixe calc= new Infixe();
	calc.enfoncerChiffre(2);
	calc.enfoncerPlus();
	calc.enfoncerChiffre(2);
	calc.enfoncerEgal();
	assertEquals("plus ?", calc.getValeurCourante(),4);
    }

    @Test
    public void testMoins() {
	Infixe calc= new Infixe();
	calc.enfoncerChiffre(2);
	calc.enfoncerMoins();
	calc.enfoncerChiffre(2);
	calc.enfoncerEgal();
	assertEquals("moins ?", calc.getValeurCourante(),0);
    }

    @Test
    public void testDiv() {
	Infixe calc= new Infixe();
	calc.enfoncerDiv();
	calc.enfoncerChiffre(2);
	calc.enfoncerEgal();
	calc.enfoncerChiffre(2);
	calc.enfoncerDiv();
	calc.enfoncerChiffre(2);
	calc.enfoncerEgal();
	assertEquals("div ?", calc.getValeurCourante(),1);
    }


@Test
    public void testMult() {
	Infixe calc= new Infixe();
	calc.enfoncerChiffre(2);
	calc.enfoncerMult();
	calc.enfoncerChiffre(2);
	calc.enfoncerEgal();
	assertEquals("mult ?", calc.getValeurCourante(),4);
    }

    
   @Test
    public void testDel() {
	Infixe calc= new Infixe();
	calc.enfoncerChiffre(2);
	calc.enfoncerPlus();
	calc.enfoncerChiffre(2);
	calc.enfoncerChiffre(2);
	calc.enfoncerDel();
	calc.enfoncerEgal();
	assertEquals("plus ?", calc.getValeurCourante(),4);
    }

   @Test
    public void testCc() {
	Infixe calc= new Infixe();
	calc.enfoncerChiffre(2);
	calc.enfoncerPlus();
	calc.enfoncerChiffre(2);
	calc.enfoncerChiffre(2);
	calc.enfoncerEgal();
	calc.enfoncerRaz();
	assertEquals("plus ?", calc.getValeurCourante(),0);
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(InfixeTest.class);
    }

}
