import org.junit.*;
import static org.junit.Assert.*;

import naval.Bateau;

/**
 *test de la classe Bateau. 
 * Lesage Yann
 */


public class BateauTest {	

    @Test
    public void testGetPointDeVie() {
	Bateau unBateau = new Bateau(5);
	assertEquals("pv?", unBateau.getPointDeVie(), 5);
    }

    @Test
    public void testToucher() {
	Bateau unBateau = new Bateau(5);
	unBateau.toucher();
	assertEquals( "toucher ?", unBateau.getPointDeVie(), 4);
    }

    @Test
    public void testCouler() {
	Bateau unBateau =new Bateau (2);
	unBateau.toucher();
	assertFalse (" couler?", unBateau.estCouler());
	unBateau.toucher();
	assertTrue (" couler?", unBateau.estCouler());
    }

    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(BateauTest.class);
    }

}
