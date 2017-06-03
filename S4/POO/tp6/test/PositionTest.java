import org.junit.*;
import static org.junit.Assert.*;

import naval.Position;

/**
 *test de la classe Position. 
 * Lesage Yann
 */


public class PositionTest {	

    @Test
    public void testGetX() {
	Position unePosition = new Position(10,0);
	assertEquals("abcsisse x?", unePosition.getX(), 10);
    }

    @Test
    public void testGetY() {
	Position unePosition = new Position(10,0);
	assertEquals("ordonnee y?", unePosition.getY(), 0);
    }

    @Test
    public void testString() {
	Position unePosition = new Position(10,0);
	assertEquals("en string?",unePosition.toString(), "10:0");
    }

    @Test
    public void testEquals() {
	Position unePosition = new Position(10,0);
        Position deuxPosition = new Position(20,0);
	Position troisPosition = new Position(10,10);
	Position quatrePosition = new Position(10,0);
	assertFalse("comparable ?", unePosition.equals(deuxPosition));
	assertFalse("comparable ?", unePosition.equals(troisPosition));
	assertTrue("comparable ?", unePosition.equals(quatrePosition));
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(PositionTest.class);
    }

}
