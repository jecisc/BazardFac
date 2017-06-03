package hanoi;

import hanoi.util.*;
import drawing.*;

/**
 * la classe du jeu de hanoi (3 tours constituent les "tours de Hanoi" : )
 *<br/> <H2 style="color:red"> Version deplacements Manuels </H2> 
 * @author D.M. 
 * @version Fevrier 2014
 */
public class HanoiJ{
    Plateau p; 
	int capacite ;
	 /**
     * constructeur  de la classe HanoiJ
	 *@param capacite : nombre de disques
     */
    public HanoiJ(int capacite){
		this.capacite = capacite ;
		p=new Plateau(capacite);
    }
/**  execute les depalcements souhaites par l'utilisateur*/
    public void execute(){
	int depart,arrivee,compteur=0;
	this.p.affichage();
	while   ( ! p.getTour(2).estPleine()) { //(p.getTour(2).getNbDisques()<this.capacite){
		compteur++;
		System.console().printf("deplacement %d\n" , compteur);
		depart = Integer.parseInt(System.console().readLine("Deplacer de (1,2 ou 3) : ")) -1 ;
		arrivee = Integer.parseInt(System.console().readLine("vers (1,2 ou 3) : ")) - 1;
		if (this.p.deplacementPossible( depart, arrivee))
			this.p.deplacerUnDisque(depart,arrivee);
		else
			System.console().printf("deplacement Interdit"); 
	}
	System.console().printf(" Nombre total de deplacements %d\n" , compteur);
	String s= System.console().readLine("Appuyer sur entree  : ");
	System.exit(0);
    }

/** la méthode principale de l'application */
    public static void main(String[] args){
	HanoiJ jeu=new HanoiJ(Integer.parseInt(args[0]));
	jeu.execute();
    }
}
