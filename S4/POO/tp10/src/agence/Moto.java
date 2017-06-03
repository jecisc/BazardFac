package agence;

/** 
 * Ferlicot-Delbecque Cyril
 * TP10 -- POO
 * Class Moto : Vehicule qui peut etre loue a l'agence. Etend la classe Vehicule.
 */
public class Moto extends Vehicule{

    private int cylindree;


    /**
     * Constructeur de Moto
     *
     * @param marque : marque du vehicule.
     * @param modele : modele du vehicule.
     * @param annee : annee de fabrication du vehicule.
     * @param prix : prix que coute la location du vehicule pour 1 journee.
     * @param cyl : la cylindre de la moto.
     */
    public Moto (String marque, String modele, int annee, int prix, int cyl){
	super(marque, modele, annee, prix);
	this.cylindree = cyl;
    }


    /**
     * Permet d'acceder a la cylindree de la moto.
     *
     * @return la cylindree de la moto
     */
    public int getCylindree(){
	return this.cylindree;
    }

    /**
     * Permet d'afficher les information sur une moto
     *
     * @return les informations sur la moto.
     */
    public String toString(){
	return super.toString() + " " + this.cylindree + "cm^3";
    }

    /**
     * Compare cette moto a un objet specifique. Return Vrai si la marque, le modele, l'annee, la cylindree et le prix sont identique. Faux sinon. 
     *
     * @return Vrai si la marque, le modele, l'annee, la cylindree et le prix sont identique. Faux sinon. 
     */
    public boolean equals(Object o){
	try{
	    Moto v = (Moto) o;
	    return (super.equals(v) && (this.cylindree == v.getCylindree()));
	}
	catch (ClassCastException e) {
	    return false;
	}
    }
}

