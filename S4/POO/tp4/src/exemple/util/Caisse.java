/**
 * la classe des caisses
 *  Dans cette version simple elles sont de differents poids, mais on ne distingue
 * 	pas les instances autrement
 * 
 * @author jc 
 */
package exemple.util;


public class Caisse {	

    /**
     * constructeurs d'objets de la classe Caisse
     * @param poids : le poids de la caisse
     */
    public Caisse(int poids) {
	this.poids = poids;
    }
    
    // les attributs de la classe Caisse
    /** le type de la caisse */
    private int poids;
    
    // les methodes de la classe Caisse	
    /** retourne le poids de la caisse
     */
    public int donnePoids() {
	return this.poids;
    }
    
    /**
    *imprime le poids de la caisse.
    * @return un string donnant le poids de la caisse.
    */
    public String toString() {
	return "caisse de poids "+ this.poids;
    }
}
