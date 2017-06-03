package pfc.strategie;

import pfc.Pfc;
import pfc.Strategie;

/**
* Ferlicot-Delbecque Cyril
* TP8 -- POO
* Class StrategiePierre : implements the interface of Strategie.
*/
public class StrategiePierre implements Strategie{
    /**
     *@return the next 'Coup' use in the StrategiePierre. The 'Coup' is always a 'PIERRE'
     */
    public Pfc getCoup(){
	return Pfc.PIERRE;
    }

    public String toString(){
	return "Strategie a tirage unique de Pierre";
    }
}