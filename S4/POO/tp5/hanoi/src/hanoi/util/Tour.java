package hanoi.util;

import java.util.Stack;
import java.util.Iterator;


// Pas de levee d'exception
/**
 * la classe d'une des 3 tours constituent les tours de Hanoi 
 * @author D.M. 
 * @version Fevrier 2014
 */
public class Tour {
    private Stack<Disque> tour ;
    private int capacite;
    private int nbDisques;
	/**
     * constructeur  de la classe Tour
	 *@param capacite nombre de disques pouvant reçevoir la Tour
     */
    public Tour(int capacite){
	this.capacite=capacite;
	this.tour=new Stack<Disque>();
	this.nbDisques=0;
    }
	
	/** indique le nombre de disques maximum supportes par la tour
	*/
    public int getCapacite(){
	return this.capacite;
    }
	
	/** indique le nombre de disques actuellement sur la tour
	*/
    public int getNbDisques(){
	return this.nbDisques;
    }
	
	/** indique si la tour ne peut plus recevoir des disques supplémentaires */
    public boolean estPleine() {
	return this.capacite == this.nbDisques;
    }
	
	/** indique si la tour ne comporte aucun disques  */
    public boolean estVide() {
	return this.nbDisques == 0;
    }

    /** inspecte le sommet de la tour sans enlever de disque
	*@return null si la tour est vide le disque sinon */
    public Disque sommet() {
	if (! this.estVide()) {
	    return this.tour.peek();
	}
	else {
	    return null;
	}
    }
    
    /** ne change pas l'etat de la tour si la tour est pleine
	* @param d le disque a poser au sommet de la tour
	*/
    public void empiler(Disque d){
	if (! this.estPleine()) {
	    this.tour.push(d);
	    this.nbDisques++;
	}
    }

    /** supprime le disque en haut de la tour s'il y en a un
	*@return null si la tour est vide, le disque sinon*/
    public Disque depiler(){
	if (! this.estVide()) {
	    this.nbDisques--;
	    return this.tour.pop();
	}
	else {
	    return null;
	}
    }
/** une chaine constituée des tailles des disques separes par des virgules 
* l'ordre des tailles est celui des disques de bas en haut
*/
    public String toString(){
	String result="";
	for (Iterator<Disque> it = tour.iterator(); it.hasNext();){
	   result = result+ ","+it.next();
	}
	return (result=="")?"":result.substring(1); //pour enlever la virgule du début
    }

}
