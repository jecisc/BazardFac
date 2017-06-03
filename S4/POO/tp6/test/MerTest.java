import org.junit.*;
import static org.junit.Assert.*;

import naval.*;
import naval.direction.*;

/** 
 * Classe MerTest
 * TP6 - Ferlicot-Delbecque Cyril
 * @author : Ferlicot-Delbecque Cyril
 */
public class MerTest{
    @Test
	public void testPoseBateau(){
	Mer uneMer = new Mer(5,5);
	Bateau unBateau = new Bateau (1);
	Position unePosition = new Position (2, 2);
	Position deuxPosition = new Position (2, 1);
	Direction uneDirection = new DirectionNord();  
	uneMer.poseBateau (unBateau, unePosition,  uneDirection);
	assertTrue("Pas de bateau ?", uneMer.vise(unePosition) == Mer.Reponse.COULE); 
	assertFalse("Pas de bateau ?",uneMer.vise(deuxPosition) == Mer.Reponse.COULE); 
	
    }

    @Test
	public void testVise(){
	Mer uneMer = new Mer(5,5);
	Position unePosition = new Position(2,2);
	Position deuxPosition = new Position(4,4);
	Bateau deuxBateau = new Bateau(1);
	Direction uneDirection = new DirectionNord(); 
	assertTrue("Pas dans l'eau ?", uneMer.vise(unePosition) == Mer.Reponse.DANS_LEAU);
	uneMer.poseBateau(deuxBateau, deuxPosition,  uneDirection);
	assertTrue("Pas coulé ?", uneMer.vise(deuxPosition) == Mer.Reponse.COULE);

    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(MerTest.class);
    }
}