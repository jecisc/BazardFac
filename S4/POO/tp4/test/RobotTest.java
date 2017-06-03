import org.junit.*;
import static org.junit.Assert.*;

import exemple.Robot;
import exemple.util.*;

public class RobotTest {	

    @Test
    public void testPrend() {
	Robot unRobot = new Robot();
	Caisse unCaisse = new Caisse(10);
	Caisse deuxCaisse = new Caisse(10);
	unRobot.prend(unCaisse);
	assertTrue("Mauvaise caisse ?", unRobot.getCaisseTenue() == unCaisse);
	unRobot.prend(deuxCaisse);
	assertTrue("Mauvaise caisse ?", unRobot.getCaisseTenue() == unCaisse);
	
    }
    

    @Test
    public void testPorteCaisse(){
	Robot unRobot = new Robot();
	Caisse unCaisse = new Caisse(10);
	
	assertFalse ("Porte une caisse ?", unRobot.porteCaisse());
	
	unRobot.prend(unCaisse);
	
	assertTrue ("Ne porte pas de caisse ?", unRobot.porteCaisse());
    }

    @Test
    public void testPoseSur(){
	Robot unRobot = new Robot();
	TapisRoulant unTapis = new TapisRoulant(15);
	TapisRoulant deuxTapis = new TapisRoulant(50);
	Caisse unCaisse = new Caisse(10);
	Caisse deuxCaisse = new Caisse(20);
	Caisse troisCaisse = new Caisse(1);
	Caisse quatreCaisse = new Caisse(1);
	unRobot.prend(unCaisse);
	unRobot.poseSur(unTapis);
	
	assertFalse("Casse non posé ?", unRobot.porteCaisse());

	unRobot.prend(deuxCaisse);
	unRobot.poseSur(unTapis);
	
	assertTrue("Caisse posé ?", unRobot.porteCaisse());

	unRobot.poseSur(deuxTapis);
	unRobot.prend(troisCaisse);
	unRobot.poseSur(deuxTapis);
	unRobot.prend(quatreCaisse);
	unRobot.poseSur(deuxTapis);
	
	assertTrue("Casse posé sur tapis plein ?", unRobot.porteCaisse());
	
    }


    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(RobotTest.class);
    }

}
