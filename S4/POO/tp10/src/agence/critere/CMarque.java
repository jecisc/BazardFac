package agence.critere;

import agence.Vehicule;
import agence.Critere;

/**
*Ferlicot-Delbecque Cyril
**TP10 -- POO
*Classe CMarque : Un "interCritere" est satisfait ssi le Vehicule est de la marque demandée
*/
public class CMarque implements Critere {

    private String marque;

    /* @param marque la marque demandée */
    public CMarque(String marque) {
        this.marque = marque;
    }

    /** @see Critere#estSatisfaitPar(Vehicule) */
    public boolean estSatisfaitPar(Vehicule v) {
        return this.marque.equals(v.getMarque());
    }
}
