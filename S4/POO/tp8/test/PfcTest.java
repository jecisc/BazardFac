import org.junit.*;
import static org.junit.Assert.*;

import pfc.Pfc;

/**
 *test de la classe Pfc. 
 * Lesage Yann
 */


public class PfcTest {	

    @Test
    public void testComparer() {
	assertEquals( "Pierre Feuille", Pfc.values()[0].comparer(Pfc.values()[1]),-1);
	assertEquals( "Pierre ciseau", Pfc.values()[0].comparer(Pfc.values()[2]),-1);
	assertEquals( "Feuile Ciseau", Pfc.values()[1].comparer(Pfc.values()[2]),-1);
    }
    
    @Test
    public void testString() {
	assertTrue( "Pierre", Pfc.values()[0].toString().equals("Pierre"));
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	    return new junit.framework.JUnit4TestAdapter(PfcTest.class);
    }

}
