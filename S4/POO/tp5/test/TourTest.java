import org.junit.*;
import static org.junit.Assert.*;

import hanoi.utils.*;

/**
 * class TourTest.
 * TP5 - POO
 * @author : Ferlicot-Delbecque Cyril
 */
public class TourTest {	

    @Test
	public void testEnlever() {
	Tour uneTour = new Tour(5, 5);
	Disque unTestDisque = new Disque(1);
	Disque deuxTestDisque = new Disque(2);
	Disque unDisque = uneTour.enlever();
	Disque deuxDisque = uneTour.enlever();

	assertTrue("Disque enleve ?", unTestDisque.compare(unDisque) == 0);
	assertTrue("Second disque enleve ?", deuxTestDisque.compare(deuxDisque) == 0);	
    }

    @Test
	public void testEstVide(){
	Tour uneTour = new Tour (0, 5);
	Tour deuxTour = new Tour (1, 5);
	assertFalse("La tour est vide ?", deuxTour.estVide());
	assertTrue("La tour est non vide ?", uneTour.estVide());
    }

    @Test 
	public void testPoser(){
	Tour uneTour = new Tour (0, 5);
	Disque unDisque = new Disque(1);
	uneTour.poser(unDisque);
	assertFalse("Un disque pose ?", uneTour.estVide());
    }

    @Test
	public void testToString(){
	Tour uneTour = new Tour (2, 5);
	
	assertTrue("Même chaine ?", uneTour.toString().equals("2,1"));
    }

    @Test
	public void testGetSommet() {
        Tour tourPasVide = new Tour(2,2);
	Disque disqueUn = tourPasVide.getSommet();
	Disque disqueDeux = tourPasVide.getSommet();
	assertTrue("sommet ?", disqueUn.compare(disqueDeux) == 0);
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(TourTest.class);
    }

}
