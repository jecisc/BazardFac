package hanoi.util;
/**
 * la classe des Disques deposes sur les Tours 
 * @author D.M. 
 * @version Fevrier 2014
 */
public class Disque {

    private int taille;
/**
     * constructeur  de la classe Disque
	 *@param t la taille du disques
     */
    public Disque(int t){
	this.taille=t;
    }
/** renvoie un entier correspondant a la taille du disque */
    public int getTaille(){
	return this.taille;
    }
/** renvoie une chaine correspondant a la taille du disque */
    public String toString(){
	return ""+this.taille;
    }
}
