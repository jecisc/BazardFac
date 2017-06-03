package pfc.strategie;

import pfc.Pfc;
import pfc.Strategie;
import java.util.Random;

/**
* Ferlicot-Delbecque Cyril
* TP8 -- POO
* Class StrategieAlea : implements the interface of Strategie.
*/
public class StrategieAlea implements Strategie{
    /**
     *@return the next 'Coup' use in the StrategieAlea. 
     */
    public Pfc getCoup(){
	Random rand = new Random();
	int val = rand.nextInt(2);
	switch (val){
	case 0: return Pfc.PIERRE;
	case 1: return Pfc.FEUILLE;
	case 2: return Pfc.CISEAU;
	default : return getCoup();
	}
    }

    public String toString(){
	return "Strategie a tirage aleatoir.";
    }
}