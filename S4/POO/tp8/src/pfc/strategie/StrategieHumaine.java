package pfc.strategie;

import pfc.Pfc;
import pfc.Strategie;
import pfc.util.Input;

/**
* Ferlicot-Delbecque Cyril
* TP8 -- POO
* Class StrategieHumaine : implements the interface of Strategie with Human decision on the keyboard.
*/
public class StrategieHumaine implements Strategie{
    /**
     *@return the next 'Coup' use in the StrategieHumaine. 
     */
    public Pfc getCoup(){
	System.out.println( "Rentrez Pierre, Feuille ou Ciseau pour choisir votre coup.");
	String coup = Input.readString();
	coup = coup.toUpperCase();
	switch (coup.charAt(0)){
	case 'P' : return Pfc.PIERRE;
	case 'F' : return Pfc.FEUILLE;
	case 'C' : return Pfc.CISEAU;
	default : System.out.println( "Le nom de votre coup est incorrect. Veuillez reessayer."); return getCoup();
	}
    }

    public String toString(){
	return "Strategie Humaine";
    }
}