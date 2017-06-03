package pfc.strategie;

import pfc.Pfc;
import pfc.Strategie;

/**
* Ferlicot-Delbecque Cyril
* TP8 -- POO
* Class StrategieCiseau : implements the interface of Strategie.
*/
public class StrategieCiseau implements Strategie{
    /**
     *@return the next 'Coup' use in the StrategieCiseau. The 'Coup' is always a 'CISEAU'
     */
    public Pfc getCoup(){
	return Pfc.CISEAU;
    }

    public String toString(){
	return "Strategie a tirage unique de Ciseau";
    }
}