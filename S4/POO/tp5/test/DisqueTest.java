import org.junit.*;
import static org.junit.Assert.*;

import hanoi.utils.Disque;

/**
 *test de la classe Disque. 
 * Lesage Yann
 */


public class DisqueTest {	

    @Test
    public void getTaille() {
	Disque unDisque = new Disque(10);
	assertEquals("taille du disque ?", unDisque.getTaille(), 10);
    }

    @Test
    public void tString() {
	Disque unDisque = new Disque(1);
	assertEquals("en string?",unDisque.toString(), "1");
    }

    @Test
    public void compare() {
	Disque unDisque = new Disque(1);
	Disque deuxDisque = new Disque(2);
	Disque deuxDisqueB = new Disque(2);
	Disque troisDisque = new Disque(3);
	assertEquals("comparable ?", deuxDisque.compare(unDisque),1 );
	assertEquals("comparable ?", deuxDisque.compare(deuxDisqueB), 0 );
	assertEquals("comparable ?", deuxDisque.compare(troisDisque), -1 );
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(DisqueTest.class);
    }

}
