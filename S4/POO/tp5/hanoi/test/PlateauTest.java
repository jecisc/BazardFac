import org.junit.*;
import static org.junit.Assert.*;

import hanoi.util.Disque;
import hanoi.util.Tour;
import hanoi.Plateau;

public class PlateauTest {

    @Test
    public void plateau() {
	Plateau p = new Plateau(5);
	assertNotNull("plateau cree ?", p);	
    }
    
    @Test
    public void getCapacite() {
	Plateau p = new Plateau(5);
	assertEquals("capacite ? ", 5,  p.getTour(0).getCapacite());
	assertEquals("capacite ? ", 5,  p.getTour(1).getCapacite());
    }

    @Test
    public void getNbDisques() {
	Plateau p = new Plateau(5);
	assertEquals("nbDisques ? ", 0,  p.getTour(1).getNbDisques());       
	assertEquals("nbDisques ? ", 5,  p.getTour(0).getNbDisques());
	p.deplacerUnDisque(0,1);
	assertEquals("nbDisques ? ", 1,  p.getTour(1).getNbDisques());       
	assertEquals("nbDisques ? ", 4,  p.getTour(0).getNbDisques());
    }

    @Test
    public void deplacement() {
	Plateau p = new Plateau(5);
	assertTrue("deplacement 0-1? ",  p.deplacementPossible(0,1)); 
	p.deplacerUnDisque(0,1);
	assertTrue("deplacement 0-2? ", p.deplacementPossible(0,2)); 
	p.deplacerUnDisque(0,2);      
	assertFalse("deplacement 2-1 ? ", p.deplacementPossible(2,1));
    }

    // ---Pour permettre l'exécution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(PlateauTest.class);
    }

}

