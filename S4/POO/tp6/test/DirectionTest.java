import org.junit.*;
import static org.junit.Assert.*;

import naval.Position;
import naval.direction.*;

/**
 *test des classes Direction. 
 * Lesage Yann
 */


public class DirectionTest {	



    @Test
    public void testNord() {
	Position lieu = new Position(1,1);
	DirectionNord nord = new DirectionNord();
	assertEquals("nord ?", nord.positionSuivante(lieu),new Position(1,2));
    }

    @Test
    public void testEst() {
	Position lieu = new Position(1,1);
	DirectionEst est = new DirectionEst();
	assertEquals("est ?", est.positionSuivante(lieu),new Position(2,1));
    }


    @Test
    public void testSud() {
	Position lieu = new Position(1,1);
	DirectionSud sud = new DirectionSud();
	assertEquals("sud ?", sud.positionSuivante(lieu),new Position(1,0));
    }

    @Test
    public void testOuest() {
	Position lieu = new Position(1,1);
	DirectionOuest ouest = new DirectionOuest();
	assertEquals("ouest ?", ouest.positionSuivante(lieu),new Position(0,1));
    }

    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(DirectionTest.class);
    }

}
