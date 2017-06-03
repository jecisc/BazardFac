package pfc;

import pfc.Pfc;
import pfc.strategie.*;

/*
 * Ferlicot-Delbecque Cyril 
 * TP8 -- POO
 * Class Joueur.
 */
public class Joueur{

    private String nom;
    private int score;
    private Strategie strategie;

    /**
     *create a new player
     *@param nom : Name of player
     *@param strat : Strategie of the player
     */
    public Joueur(String nom, Strategie strat){
	this.nom = nom;
	this.score = 0;
	this.strategie = strat;
    }

    /**
     *@return enum pfc :the next coup of player
     */
    public Pfc coup(){
	return this.strategie.getCoup();
    }

    /**
     *@return int : the score of player
     */
    public int getScore(){
	return this.score;
    }

    /**
     * Add the number int the parameter to score
     * @param pt : nomber of point that we've to add.
     */
    public void addpt(int pt){
	this.score = score + pt;
    }

    /**
     *@return string :the name of player
     */
    public String getNom(){
	return this.nom;
    }

    /**
     *@return string : "nom score strategie"
     */
    public String toString(){
	return "Le joueur " + this.nom + " joue avec la strategie " + this.strategie + " et a reussi a obtenir un score de " + this.score;
    }
}