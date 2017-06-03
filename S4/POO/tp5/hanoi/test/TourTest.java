import org.junit.*;
import static org.junit.Assert.*;

import hanoi.util.Disque;
import hanoi.util.Tour;

public class TourTest {

    @Test
    public void tour() {
	Tour t = new Tour(5);
	assertNotNull("tour créée ?", t);	
    }
    
    @Test
    public void getCapacite() {
	Tour t = new Tour(5);
	assertEquals("capacite ? ", 5,  t.getCapacite());
    }

    @Test
    public void getNbDisques() {
	Tour t = new Tour(5);
	assertEquals("nbDisques ? ", 0, t.getNbDisques());       
	t.empiler(new Disque(3));
	assertEquals("nbDisques ? ", 1, t.getNbDisques());
    }
    
    @Test
    public void estPleine() {
	Tour t = new Tour(1);
	assertFalse("pas pleine ?",t.estPleine());
	t.empiler(new Disque(3));
	assertTrue("pleine ?",t.estPleine());
    }

    @Test
    public void estVide() {
	Tour t = new Tour(1);
	assertTrue("vide ?",t.estVide());
	t.empiler(new Disque(3));
	assertFalse("pas vide ? ",t.estVide());
    }

    @Test
    public void sommetEtEmpiler() {
	Tour t = new Tour(5);
	Disque d = new Disque(4);
	t.empiler(d);
	assertEquals("nbDisques ? ", t.getNbDisques(),1);
	assertSame(d, t.sommet());
    }

    @Test
    public void depiler() {
	Tour t = new Tour(5);
	Disque d = new Disque(4);
	t.empiler(d);
	Disque d2 = t.depiler();
	assertEquals("nbDisques ? ", 0, t.getNbDisques());
	assertSame(d, d2);
    }


    // ---Pour permettre l'exécution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(TourTest.class);
    }

}

