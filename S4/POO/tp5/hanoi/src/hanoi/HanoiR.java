package hanoi;

import hanoi.util.*;
import drawing.*;

/**
 * la classe du jeu de hanoi (3 tours constituent les "tours de Hanoi" : déplacements automatiques)
 *<br/> <H2 style="color:red"> Version Récursive </H2>
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
/**  execute les dépalcements */
    public void execute(){
	this.p.affichage();
	this.deplacer(this.capacite,0,2);
    }
  /** La méthode récursive qui effectue les déplacements
  *@param nb Le nombre de disques qu'il faut déplacer
  *@param depart La tour où on prélève les disques
  *@param arrivee La tour où on dépose les disques
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

/** la méthode principale de l'application */
    public static void main(String[] args){
	HanoiR jeu=new HanoiR(Integer.parseInt(args[0]));
	jeu.execute();
    }
}
