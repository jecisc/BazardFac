import org.junit.*;
import static org.junit.Assert.*;

import hanoi.util.Disque;

public class DisqueTest {

    @Test
    public void disque() {
	Disque d = new Disque(5);
	assertNotNull("cr�� ?", d);	
    }
    
    @Test
    public void taille() {
	Disque d = new Disque(5);
	assertEquals("taille ? ", 5, d.getTaille());
    }


    // ---Pour permettre l'ex�cution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(DisqueTest.class);
    }

}

