package hanoi.utils;

import hanoi.utils.Disque;

/**
 * The Tour represent a stack of Disque
 *TP 05 :hanoi
 *Lesage Yann
 */

public class Tour
{
	/**
	 * contains the Disque at the highest level
	 */	
	private Disque sommet;
	
	/**
	 *contructor of Tour
	 *@param nombreDisque : number of Disque
	 *@param parametreUniformisation : just a number to be compatible with an other implement
	 */
	public Tour(int nombreDisque, int parametreUniformisation) {
	    for(int i=0; i<nombreDisque;i++){
		Disque unDisque = new Disque(nombreDisque - i);
		unDisque.setDessous(this.sommet);
		this.sommet = unDisque ;
	    }
	}
	
	/**
	 * remove a disque
	 * @return the Disque removed
	 */
	public Disque enlever() {
	    Disque leDisque= this.sommet;
	    this.sommet = leDisque.getDessous();
	    return leDisque;	
	}
	
	/**
	 * put a Disque on the Tour
	 * @param disquePoser : Disque 
	 */
	public void poser(Disque disquePoser) {
	    disquePoser.setDessous(this.sommet);
	    this.sommet = disquePoser;
	}
	

      /**
       * @return the Disque at the Tour's top
       */
       public Disque getSommet(){
	   return this.sommet;
       }

	/**
	 * @return String "La tour contient les disques : "d1,", "d2,"....
	 */
	public String toString() {
	    if (this.sommet != null){
		Disque disqueActu = this.sommet;
		String retour = disqueActu.toString();
		disqueActu = disqueActu.getDessous();
		while( disqueActu != null){
		    retour = disqueActu.toString() + "," + retour;
		    disqueActu = disqueActu.getDessous();		
		}
	    return retour;
	    }else {
		return "";
	    }
	}
	
	/**
	 * @return false if the Tour is empty, True else
	 */
	public boolean estVide() {
	    if (this.sommet == null){
		return true;
	    }else{
		return false;
	    }	
	}
	
}

