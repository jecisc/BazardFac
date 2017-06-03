package naval;

/**
 * Classe Bateau : etat d'un bateau
 * Tp 06 : bataille naval
 * Lesage Yann
 */

public class Bateau {
    private int longueur;
    
    /** Constructeur de Bateau
     *@param longueur : nombre de case du bateau
     */
    public Bateau( int longueur ){
	this.longueur = longueur;
    }

    /**@return  les poitn de vie (case non toucher) du bateau
     */
    public int getPointDeVie(){
	return this.longueur;
    }

    /** retire un point de vie au Bateau
     */
    public void toucher(){
	this.longueur = this.longueur -1;
    }
    
    /**@return vrai si le bateau est couler
     */
    public boolean estCouler(){
	return this.longueur == 0;
    }

}
