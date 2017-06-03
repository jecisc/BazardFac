package hanoi;

import hanoi.util.*;
import drawing.*;
/**
 * la classe du jeu de hanoi (3 tours constituent les "tours de Hanoi" : deplacements automatiques)
 *<br/> <H2 style="color:red"> Version iterative </H2> 
 * @author D.M. 
 * @version Fevrier 2014
 */
public class HanoiI{
    Plateau p; 
	int capacite ;
	/**
     * constructeur  de la classe HanoiI
	 *@param capacite : nombre de disques
     */
    public HanoiI(int capacite){
		this.capacite = capacite ;
		p=new Plateau(capacite);
    }
/**  execute les depalcements */
    public void execute(){
	this.p.affichage();
	this.deplacer(0,2);
    }
 /** La methode iterative qui effectue les deplacements
  *@param depart La tour où on preleve les disques
  *@param arrivee La tour où on depose les disques
  */
    public void deplacer(int depart,int arrivee){
		int lePetit=0;
		int sens = this.capacite %2==0 ? 1 : -1;
		int petitSuiv = sens==1 ? 1:2;
		while   ( ! p.getTour(2).estPleine()) { 
			this.p.deplacerUnDisque(lePetit,petitSuiv);
			int lAutre=3-lePetit-petitSuiv;
			if ( ! p.getTour(2).estPleine())
				if (this.p.deplacementPossible(lePetit , lAutre))
					this.p.deplacerUnDisque(lePetit , lAutre);
				else
					this.p.deplacerUnDisque(lAutre , lePetit);
			lePetit = petitSuiv;
			petitSuiv = (3+petitSuiv + sens)%3;
		}
    }

/** la méthode principale de l'application */
    public static void main(String[] args){
	HanoiI jeu=new HanoiI(Integer.parseInt(args[0]));
	jeu.execute();
    }
}
