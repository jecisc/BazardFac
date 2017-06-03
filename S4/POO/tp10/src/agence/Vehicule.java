package agence;

/** 
 * Ferlicot-Delbecque Cyril
 * TP10 -- POO
 * Class Vehicule : Vehicule qui peut être loue à l'agence.
 */
public class Vehicule{

    //Attributs.
    
    private String marque;

    private String modele;

    private int annee;

    private int prixj;

    //Constructeur
    /**
     * Constructeur de Vehicule
     *
     * @param marque : marque du vehicule.
     * @param modele : modele du vehicule.
     * @param annee : annee de fabrication du vehicule.
     * @param prix : prix que coute la location du vehicule pour 1 journee.
     */
    public Vehicule (String marque, String modele, int annee, int prix){
	this.marque = marque ;
	this.modele = modele ;
	this.annee = annee ;
	this.prixj = prix ;
    }

    // Methodes

    /**
     * Permet d'acceder a la marque du vehicule.
     *
     * @return la marque du vehicule.
     */
    public String getMarque (){
	return this.marque;
    }

    /**
     * Permet d'acceder au modele du vehicule.
     *
     * @return le modele du vehicule.
     */
    public String getModele (){
	return this.modele;
    }

    /**
     * Permet d'acceder a l'annee de fabrication du vehicule.
     *
     * @return l'annee de fabrication du vehicule.
     */
    public int getAnnee (){
	return this.annee;
    }

    /**
     * Permet d'acceder au prix a la journee du vehicule.
     *
     * @return le prix a la journee du vehicule.
     */
    public int getPrix (){
	return this.prixj;
    }

    /**
     * Permet d'afficher les information sur un vehicule
     *
     * @return les informations sur le vehicule.
     */
    public String toString(){
	 return this.annee + " " + this.marque + " " + this.prixj;
    }

    /**
     * Compare ce vehicule a un objet specifique. Return Vrai si la marque, le modele, l'annee et le prix sont identique. Faux sinon. 
     *
     * @return Vrai si la marque, le modele, l'annee et le prix sont identique. Faux sinon. 
     */
    public boolean equals(Object o){
	try{
	    Vehicule v = (Vehicule) o;
	    return ( (this.marque.equals(v.getMarque())) &&  (this.modele.equals(v.getModele())) && (this.annee == v.getAnnee()) && (this.prixj == v.getPrix()));
	}
	catch (ClassCastException e) {
	    return false;
	}
    }
}




























