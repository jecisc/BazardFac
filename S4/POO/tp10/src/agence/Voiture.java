package agence;

/** 
 * Ferlicot-Delbecque Cyril
 * TP10 -- POO
 * Class Voiture : Vehicule qui peut Etre loue a l'agence. Etend la classe Vehicule.
 */
public class Voiture extends Vehicule{

    private int nbPassager;


    /**
     * Constructeur de Voiture
     *
     * @param marque : marque du vehicule.
     * @param modele : modele du vehicule.
     * @param annee : annee de fabrication du vehicule.
     * @param prix : prix que coute la location du vehicule pour 1 journee.
     * @param nbPass : le nombre de passager possible.
     */
    public Voiture (String marque, String modele, int annee, int prix, int nbPass){
	super(marque, modele, annee, prix);
	this.nbPassager = nbPass;
    }


    /**
     * Permet d'acceder au nombre de passager de la voiture.
     *
     * @return le nombre de passager max de la voiture.
     */
    public int getNbPass (){
	return this.nbPassager;
    }

    /**
     * Permet d'afficher les information sur une voiture
     *
     * @return les informations sur la voiture.
     */
    public String toString(){
	return super.toString() + " " + this.nbPassager;
    }

    /**
     * Compare cette voituree a un objet specifique. Return Vrai si la marque, le modele, l'annee et le prix sont identique. Faux sinon. 
     *
     * @return Vrai si la marque, le modele, l'annee et le prix sont identique. Faux sinon. 
     */
    public boolean equals(Object o){
	try{
	    Voiture v = (Voiture) o;
	    return (super.equals(v) && (this.nbPassager == v.getNbPass()));
	}
	catch (ClassCastException e) {
	    return false;
	}
    }
}




























