package hanoi;

import hanoi.util.*;
import drawing.*;

/**
 * la classe du jeu de hanoi (3 tours constituent les "tours de Hanoi" : d�placements automatiques)
 *<br/> <H2 style="color:red"> Version R�cursive </H2>
 * @author D.M. 
 * @version Fevrier 2014
 */

public class HanoiR{
    Plateau p; 
	int capacite ;
	 /**
     * constructeur  de la classe HanoiR
	 *@param capacite : nombre de disques
     */

    public HanoiR(int capacite){
		this.capacite = capacite ;
		p=new Plateau(capacite);
    }
/**  execute les d�palcements */
    public void execute(){
	this.p.affichage();
	this.deplacer(this.capacite,0,2);
    }
  /** La m�thode r�cursive qui effectue les d�placements
  *@param nb Le nombre de disques qu'il faut d�placer
  *@param depart La tour o� on pr�l�ve les disques
  *@param arrivee La tour o� on d�pose les disques
  */

    public void deplacer(int nb,int depart,int arrivee){
	if(nb == 1)
	    this.p.deplacerUnDisque(depart,arrivee);
	else{
	    this.deplacer(nb-1,depart,3-depart-arrivee);
	    this.p.deplacerUnDisque(depart,arrivee);
	    this.deplacer(nb-1,3-depart-arrivee,arrivee);
	}
    }

/** la m�thode principale de l'application */
    public static void main(String[] args){
	HanoiR jeu=new HanoiR(Integer.parseInt(args[0]));
	jeu.execute();
    }
}
