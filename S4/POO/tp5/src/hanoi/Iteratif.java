package hanoi;

import io.*;
import drawing.*;
import hanoi.utils.*;
import hanoi.Plateau;
/**
 * solution iteratif of the problem of hanoi
 * tp05:hanoi
 * lesage yann
 */

public class Iteratif
{
        public static int inputInt(){
	    System.out.println( "Choissisez un nombre de disque (superieur a 5)");
	    try {
		int nb =  Input.readInt();
		if (nb<5){
		    return inputInt();
		} else {
		    return nb;
		}
	    } catch (Exception e) { System.out.println("Ce doit etre un nombre");
		return inputInt();
	    }
	    
	}


        private static void autreDeplacement(Plateau unPlateau, int t1, int t2){
	    if (unPlateau.deplacementPossible(t1,t2)){
		unPlateau.deplacer(t1,t2);
	    } else if (unPlateau.deplacementPossible(t2,t1)){
		unPlateau.deplacer(t2,t1);
	    }
	}

	/**
	 * create the Plateau and launch the solution iteratif of the problem of hanoi
	 */
	public static void main(String[] args) {
	    int nbDisque = inputInt();
	    Plateau unPlateau = new Plateau(nbDisque);
	    DrawPlateau graphPlateau = new DrawPlateau (nbDisque);
	    int positionPetitDisque = 0;
	    int sens = 2;
	    if ((nbDisque % 2)== 0){
		sens =1;
	    }
	    while(!(unPlateau.getTour(0).estVide() && unPlateau.getTour(1).estVide())){
		long tmp=System.currentTimeMillis();
		while (System.currentTimeMillis()-tmp<1000){/* attente : duree en millisecondes*/};
		unPlateau.deplacer( positionPetitDisque, ((positionPetitDisque +sens)%3));
		positionPetitDisque = (positionPetitDisque +sens) % 3;
		graphPlateau.dessine(unPlateau.getTour(0).toString(), unPlateau.getTour(1).toString(), unPlateau.getTour(2).toString());
		tmp=System.currentTimeMillis();
		while (System.currentTimeMillis()-tmp<1000){/* attente : duree en millisecondes*/};
		autreDeplacement(unPlateau, ( positionPetitDisque + 1 ) % 3,( positionPetitDisque + 2 ) % 3 );
		graphPlateau.dessine(unPlateau.getTour(0).toString(), unPlateau.getTour(1).toString(), unPlateau.getTour(2).toString());
	    }		
	}
	
}

