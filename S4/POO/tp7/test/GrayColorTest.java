import org.junit.*;
import static org.junit.Assert.*;

import image.color.* ;

/** 
 * Classe 
 * TP7 - Ferlicot-Delbecque Cyril
 * @author : Ferlicot-Delbecque Cyril
 */
public class GrayColorTest{

    @Test
	public void testGetLevel(){
	GrayColor cinquante = new GrayColor (50);
	assertTrue("Pas le bon niveau ?", cinquante.getLevel()==50);
    }

    @Test
	public void testSetLevel(){
	GrayColor cinquante = new GrayColor (40);
	cinquante.setLevel(50);
	assertTrue("Niveau non changé ?", cinquante.getLevel()==50);
    }

    @Test
	public void testEquals(){
	GrayColor cinquante = new GrayColor (50);
	GrayColor soisante = new GrayColor (60);
	GrayColor cinquantaine = new GrayColor (50);
	
	assertTrue("Pas égale ?", cinquante.equals(cinquantaine));
	assertFalse("Egal ?", cinquante.equals(soisante));
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(GrayColorTest.class);
    }
}