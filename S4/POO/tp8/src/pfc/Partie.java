package pfc;

import pfc.*;
import pfc.strategie.*;
import pfc.util.Input;

/**
 *Classe Partie : launch the game
 * TP 08 - POO
 *@author Lesage yann
 */

public class Partie{
    Joueur j1;
    Joueur j2;
    int nbTours;
    final int POINTSGAGNANT = 2;
    final int POINTSPERDANT =0;
    final int EGALITE = 1;

    Partie(int nbTours, Joueur j1, Joueur j2){
	this.nbTours= nbTours;
	this.j1 = j1;
	this.j2 = j2;
    }

    /**
     *launch one tour of game
     */
    void jouerUnTour(){
	Pfc c1 = j1.coup();
	Pfc c2 = j2.coup();
	System.out.println(c1.toString());
	System.out.println(c2.toString());
	int res= c1.comparer(c2);
	if (res == 1 ){
	    j1.addpt(this.POINTSGAGNANT);
	    j2.addpt(this.POINTSPERDANT);
	}else if (res ==0){
	    j1.addpt(this.EGALITE);
	    j2.addpt(this.EGALITE);
	}else{
	    j2.addpt(this.POINTSGAGNANT);
	    j1.addpt(this.POINTSPERDANT);
	}
	System.out.println(j1.toString());
	System.out.println(j2.toString());
    }

    /**
     *print the player who win
     */
    void gagnant(){
	if (j1.getScore()< j2.getScore()){
	    System.out.println("Le joueur " + j2.getNom() + " gagne avec un score de " + j2.getScore()+ ".");
	}else if (j1.getScore()> j2.getScore()){
	    System.out.println("Le joueur " + j1.getNom() + " gagne avec un score de " + j1.getScore()+ ".");
	} else {
	    System.out.println("egalite");
	}
    }

    /**
     *launch one game
     */
    void jouerUnePartie(){
	int i;
	for(i =0; i<nbTours; i++){
	    System.out.println("Tour "+ i);
	    this.jouerUnTour();
	    System.out.println();
	}
	this.gagnant();
    }

    public static void main(String[] args){
	Strategie hum = new StrategieHumaine();
	Strategie tout = new StrategiePFC();
	Joueur j1 = new Joueur("joueur1", hum);
	Joueur j2 = new Joueur("joueur2", tout);
	Partie jeu = new Partie ( Integer.parseInt(args[0]), j1, j2);
	jeu.jouerUnePartie();
    }
}