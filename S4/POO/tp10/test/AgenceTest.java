import org.junit.*;
import static org.junit.Assert.*;
import agence.*;
import agence.critere.*;
import java.util.List;
import java.util.LinkedList;
/**
 * Lesage Yann
 * TP10 -- POO
 * test de la classe Agence
 */
public class AgenceTest {	

    @Test
    public void testSelectionne() {
	Agence agc = new Agence();
	List<Vehicule> test = new LinkedList<Vehicule>();
	Critere crit =new CPrix(70);
	Vehicule voiture =new Vehicule("test", "test", 1960, 60);
	agc.addVehicule(voiture);
	test.add(voiture);
	assertEquals("prix bon?",agc.selectionne( crit),test) ;
    }
    
    @Test
    public void testloueVehicule() {
	Agence agc = new Agence();
	Client clt = new Client("testeur",20);
	Vehicule voiture =new Vehicule("test", "test", 1960, 60);
	agc.addVehicule(voiture);
	assertEquals("loue bien ?",agc.loueVehicule(clt, voiture),voiture.getPrix(), 0.1) ;
    }
    
    @Test
    public void testEstLouer() {
	Agence agc = new Agence();
	Client clt = new Client("testeur",20);
	Vehicule voiture =new Vehicule("test", "test", 1960, 60);
	agc.addVehicule(voiture);
	agc.loueVehicule(clt, voiture);
	assertTrue("louer ?",agc.estLoueur(clt)) ;
    }


    @Test
    public void testEstLoue() {
	Agence agc = new Agence();
	Client clt = new Client("testeur",20);
	Vehicule voiture =new Vehicule("test", "test", 1960, 60);
	agc.addVehicule(voiture);
	assertFalse("loue ?",agc.estLoue(voiture)) ;
	agc.loueVehicule(clt, voiture);
	assertTrue("loue ?",agc.estLoue(voiture)) ;
    }

    @Test
    public void testRendVehicule() {
	Agence agc = new Agence();
	Client clt = new Client("testeur",20);
	Vehicule voiture =new Vehicule("test", "test", 1960, 60);
	agc.addVehicule(voiture);
	agc.loueVehicule(clt, voiture);
	agc.rendVehicule(clt);
	assertFalse("rendu?",agc.estLoue(voiture)) ;
    }

    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(AgenceTest.class);
    }

}
