import org.junit.*;
import static org.junit.Assert.*;

import hanoi.Plateau;
import hanoi.utils.*;

/**
 * class PlateauTest.
 * TP5 - POO
 * @author : Ferlicot-Delbecque Cyril
 */
public class PlateauTest {	


    @Test 
	public void testDeplacementPossible(){
	Plateau unPlateau = new Plateau (5);
	assertTrue("Déplacement impossible ?!", unPlateau.deplacementPossible(0, 1));
	unPlateau.deplacer(0, 1);
	assertFalse("Déplacement possible ?", unPlateau.deplacementPossible(0, 1));
    }
	
    @Test
	public void testDeplacer (){
	Plateau unPlateau = new Plateau (5);
	unPlateau.deplacer(1, 2);
	assertTrue("Déplacement effectué ?", unPlateau.getTour(2).estVide());
	unPlateau.deplacer(0, 1);
	assertFalse("Déplacement non effectué ?", unPlateau.getTour(1).estVide());
	unPlateau.deplacer(0, 1);
	unPlateau.deplacer(1, 2);
	assertTrue("Déplacement effectué sur plus petit disque ?",  unPlateau.getTour(1).estVide());
    }
    
    @Test
	public void testEstFini(){
	Plateau unPlateau = new Plateau (2);
	unPlateau.deplacer(0, 1);
	unPlateau.deplacer(0, 2);
	assertFalse("Est fini ?", unPlateau.estFini());
	unPlateau.deplacer(1, 2);
	assertTrue("N'est pas fini ?", unPlateau.estFini());
    }

    @Test
	public void testGetTour(){
	Plateau unPlateau = new Plateau (5);
	assertTrue("Tour récupéré ?", unPlateau.getTour(0).getSommet().getTaille() == 1);
    }

    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(PlateauTest.class);
    }
    
}