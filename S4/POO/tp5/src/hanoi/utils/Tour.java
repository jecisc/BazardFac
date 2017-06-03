package hanoi.utils;

import hanoi.utils.*;
/**
 * Class Tour : Tour is a class use in the Hanoi class.
 * POO - TP5
 * @author : Ferlicot-Delbecque Cyril
 */

public class Tour
{

    //Attribute 
	private Disque[] element;

	private int sommet;
	
    //Constructor
	/**
	 * Constructor
	 * Allow to create an objet Tour
	 * @param nombreDisque : number of Disc that we want to create on the first Tour
	 * @param tailleTableau : number max of Disque the Tour can take.
	 * C.U. : tailleTableau > nombreDisque.
	 */
    public Tour(int nombreDisque, int tailleTableau) {
	this.element= new Disque[tailleTableau];
	this.sommet = 0;
	for (this.sommet = 0; this.sommet < nombreDisque ; this.sommet++){
	    this.element[this.sommet]=new Disque (nombreDisque - this.sommet);
	}
	this.sommet--;
	    
    }
	
    //Methodes
	/**
	 * Get off the Disque at the highest level of the Tour.
	 * @return the Disque remove. 
	 */
	public Disque enlever() {
	    this.sommet = this.sommet -1;
	    return new Disque(this.element[this.sommet+1].getTaille());	
	}
	
    /**
     * Put a Disque at the highest level of the Tour. We test if this move is possible in Plateau and not in Tour.
     *@param disquePoser : The Disque we want to put on the Tour.
     */	
    public void poser(Disque disquePoser) {
	this.sommet = this.sommet +1;
	this.element[this.sommet] = disquePoser;
    }
	
    /**
     *Returns a String object representing this Tour 
     *@return a string representation of the Tour with all the Disque
     */
    public String toString() {
	String val = "";
	if (this.sommet >= 0)
	   val= val +  this.element[0].toString();
	for (int i = 1; i <= this.sommet; i++){
	    val =  val + "," ;
	    val = val + this.element[i].toString();
	}			
	return val;	
    }
	
    /**
     * Allow to know if a Tour is empty or not.
	 * @return true if the Tour is empty, else false.
	 */
	public boolean estVide() {
	    if (this.sommet < 0) 
		return true;
	    else
		return false;	
	}
	
    /**
     * return the 'Disque' without remove it of the top.
     * @return the 'Disque'
     */
    public Disque getSommet(){
	if (this.sommet < 0)
	    return null;
	else
	    return this.element[this.sommet];
    }
	
}
