package agence;

import agence.critere.*;

/**
 * Ferlicot-Delbecque Cyril
 * TP10 -- POO
 * Class AgenceMain : Possede des Vehicules, Voitures, Motos et fait une selection sur un prix.
 */
public class AgenceMain{
    
    /** 
     * La méthode principale de notre classe 
     */
    public static void main(String[] args){
	if (args.length != 0) {
	    System.out.println("usage : Java -cp agence.AgenceMain sans argument.");
	    System.exit(0);
	}
	
	Agence agc = new Agence();
	AgenceMefiante agcM = new AgenceMefiante();
	Client clt = new Client("Timolieon", 18);
	Vehicule v1 = new Vehicule("Marque1", "Modele1", 2010, 300);
	Vehicule v2 = new Vehicule("Marque1", "Modele2", 2000, 40);
	Vehicule v3 = new Voiture("Marque2", "Modele3", 2005, 90, 4);
	Vehicule v4 = new Voiture("Marque3", "Modele4", 2009, 180, 2);
	Vehicule v5 = new Moto("Marque1", "Modele5", 2007, 70, 150);
	Vehicule v6 = new Moto("Marque4", "Modele6", 2013, 115, 300);
	Critere critP = new CPrix(125);
	agc.addVehicule(v1);
	agc.addVehicule(v2);
	agc.addVehicule(v3);
	agc.addVehicule(v4);
	agc.addVehicule(v5);
	agc.addVehicule(v6);
	agc.selectionne(critP);
	agc.afficheSelection(critP);
	System.out.println("Avec l'agence mefiante :");
	agcM.addVehicule(v1);
	agcM.addVehicule(v2);
	agcM.addVehicule(v3);
	agcM.addVehicule(v4);
	agcM.addVehicule(v5);
	agcM.addVehicule(v6);
	agcM.selectionne(critP);
	agcM.afficheSelection(critP, clt);
    }
}