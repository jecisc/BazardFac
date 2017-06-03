import org.junit.*;
import static org.junit.Assert.*;

import agence.Vehicule;

/**
 * Ferlicot-Delbecque Cyril 
 * TP10 -- POO
 * VehiculeTest: Test de la classe Vehicule.
 */
public class VehiculeTest {	

    @Test
    public void testGetMarque() {
	Vehicule v = new Vehicule("Marque", "Modele", 2014, 250);
	assertTrue("Pas la bonne marque ?", v.getMarque().equals("Marque"));
    }	

    @Test
    public void testGetModele() {
	Vehicule v = new Vehicule("Marque", "Modele", 2014, 250);
	assertTrue("Pas le bon Modele", v.getModele().equals("Modele"));
    }	

    @Test
    public void testGetAnnee() {
	Vehicule v = new Vehicule("Marque", "Modele", 2014, 250);
	assertTrue("Pas la bonne annee", v.getAnnee() == 2014);
    }	

    @Test
    public void testGet() {
	Vehicule v = new Vehicule("Marque", "Modele", 2014, 250);
	assertTrue("Pas le bon prix", v.getPrix() == 250);
    }

    @Test
    public void testEquals() {
	Vehicule v1 = new Vehicule("Marque", "Modele", 2014, 250);
	Vehicule v2 = new Vehicule("Marque", "Modele", 2014, 250);
	Vehicule v3 = new Vehicule("Marque", "Modele", 2014, 280);

	assertTrue("Pas les meme vehicules ?", v1.equals(v2));
	assertFalse("Les meme vehicules ?", v1.equals(v3));
    }




    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(VehiculeTest.class);
    }

}