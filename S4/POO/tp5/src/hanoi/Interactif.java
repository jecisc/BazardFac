package hanoi;

import io.*;
import drawing.*;
import hanoi.utils.*;
import hanoi.Plateau;


/**
 * solution manual of the problem of hanoi
 * tp05:hanoi
 * lesage yann
 */


public class Interactif
{	

        public static int inputInt(){
	    System.out.println( "Choissisez un nombre de disque (superieur a 5)");
	    try {
		int nb =  Input.readInt() ;
		if (nb<5){
		    return inputInt();
		} else {
		    return nb;
		}
	    } catch (Exception e) { System.out.println("Ce doit etre un nombre");
		return inputInt();
	    }
	    
	}

	/**
	 * create the Plateau and launch the solution
	 */
	public static void main(String[] args) {
	    HanoiInput resultat = new HanoiInput();
	    int nbDisque = inputInt();
	    Plateau plateau = new Plateau(nbDisque);
	    DrawPlateau graphPlateau = new DrawPlateau(nbDisque);
	    graphPlateau.dessine(plateau.getTour(0).toString(), plateau.getTour(1).toString(), plateau.getTour(2).toString());
	    while ( plateau.getTour(0).estVide() && plateau.getTour(1).estVide()){
		resultat.readInput();
		if( resultat.isDeplacement()){
		    if(plateau.deplacementPossible( resultat.getDe() , resultat.getVers())){
			plateau.deplacer(resultat.getDe(), resultat.getVers());
			graphPlateau.dessine(plateau.getTour(0).toString(), plateau.getTour(1).toString(), plateau.getTour(2).toString());
		    }
		    
		}
	    }	    
			
	}
}

