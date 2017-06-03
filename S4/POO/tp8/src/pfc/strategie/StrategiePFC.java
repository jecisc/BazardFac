package pfc.strategie;

import pfc.Pfc;
import pfc.Strategie;

/**
* Lesage Yann
* TP8 -- POO
* Class StrategiePfc : implements the interface of Strategie.
*/
public class StrategiePFC implements Strategie{
    int cpt;
    /**
     *@return the next 'Coup' use in the StrategiePfc. The 'Coup' is a 'PIERRE', 
     *the next time a 'FEUILLE', and after a 'CISEAU'
     */
    public Pfc getCoup(){
	cpt =(cpt +1) %3;
	return Pfc.values()[cpt];
    }

    public String toString(){
	return "Strategie a tirage cyclique de Pierre, Feuille, Ciseau";
    }
}
