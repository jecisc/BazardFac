package hanoi.utils;


/**
 * Class Disque : Disque is a class use in the Hanoi class.
 * POO - TP5
 * @author : Ferlicot-Delbecque Cyril
 */

public class Disque
{
    //Attribute
	private int taille;
	
    //Constructor
	/**
	 * Constructor
	 * Allow to create an objet Disque
	 *@param tailleDisque : the size of the disc.
	 */
	public Disque(int tailleDisque) {
	    this.taille = tailleDisque;
	}
	
    //Methodes
	/**
	 *Returns a String object representing this Disque's size. 
	 *@return a string representation of the size of this object 
	 */
	public String toString() {
		return (Integer.toString(this.getTaille()));	
	}
	
	/**
	 * Determines the size of a Disque
	 *@return return the size's value of the property.
	 */
	public int getTaille() {
		return this.taille;	
	}

    /**
     *Compares an other Disque to our Disque
     *@return -1 if disqueCompare larger than our Disque. 0 if they're equals. 1 if Disque is larger than DisqueCompare.
     */
    public int compare(Disque disqueCompare){
	if (this.getTaille() < disqueCompare.getTaille())
	    return -1;
	else {
	    if (this.getTaille() > disqueCompare.getTaille())
		return 1;
	    else
		return 0;
	}
    }
	
}

