import org.junit.*;
import static org.junit.Assert.*;

import pfc.Pfc;
import pfc.Strategie;
import pfc.strategie.StrategiePierre;
import pfc.Joueur;

/**
 * Ferlicot-Delbecque Cyril 
 * TP8 -- POO
 * JoueurTest: Test de la classe Joueur
 */
public class JoueurTest {	

    @Test
    public void testCoup() {
	Strategie stratPierre = new StrategiePierre();
	Joueur player = new Joueur ("Racaillou", stratPierre); 

	assertTrue("N'est pas une pierre ?", player.coup()==Pfc.PIERRE);
    }

    @Test
    public void testGetScore() {
	Strategie stratPierre = new StrategiePierre();
	Joueur player = new Joueur ("Racaillou", stratPierre); 
	
	assertTrue("Score non nul ?", player.getScore() == 0);
	
	player.addpt(2);

	assertTrue("Score nul ?", player.getScore()==2);
	
    }

    @Test
    public void testAddPt() {
	Strategie stratPierre = new StrategiePierre();
	Joueur player = new Joueur ("Racaillou", stratPierre); 
	
	player.addpt(2);

	assertTrue("Score différent de 2 ?", player.getScore()==2);

	player.addpt(2);

	assertTrue("Score différent de 4 ?", player.getScore()==4);
	
    }

    @Test
    public void testGetNom() {
	Strategie stratPierre = new StrategiePierre();
	Joueur player = new Joueur ("Racaillou", stratPierre); 

	assertTrue ("Nom incorrect ?", player.getNom().equals("Racaillou"));
    }




    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(JoueurTest.class);
    }

}