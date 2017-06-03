package bataille.run;

import bataille.Bataille;

public class BatailleNavale {

	public static void main(String[] args) {
		Bataille combat = new Bataille("bataillenavaleXML.xml");
		combat.run();
	}

}
