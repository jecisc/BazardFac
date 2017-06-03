package pfc.strategie;

import pfc.Pfc;
import pfc.Strategie;

/**
 * Ferlicot-Delbecque Cyril
 * TP8 -- POO
 * Class StrategieFeuille : implements the interface of Strategie.
 */
public class StrategieFeuille implements Strategie{
    /**
     *@return the next 'Coup' use in the StrategieFeuille. The 'Coup' is always a 'FEUILLE'
     */
    public Pfc getCoup(){
	return Pfc.FEUILLE;
    }

    public String toString(){
	return "Strategie a tirage unique de Feuille";
    }
}