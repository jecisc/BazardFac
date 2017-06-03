package agence.critere;

import agence.Vehicule;
import agence.Critere;
/**
* Ferlicot-Delbecque Cyril
* TP10 -- POO
* Class CPrix : Implemente Critere avec un critere de prix maximum donne a la construction
*/
public class CPrix implements Critere{

    //Attribut
    private int prix;

    //Constructeur
    /**
     * Construit un critere avec un prix max.
     * @param prix : prix max que l'on souhaite.
     */
    public CPrix ( int prix){
	this.prix = prix;
    }
    
    //Methode
    /**
     * @param v la voiture dont on teste la conformité au critère
     * @return true si et seulement si la voiture a un prix inferieur au prix max.
     */
    public boolean estSatisfaitPar(Vehicule v){
	return ((v.getPrix() <= this.prix));
    }
}