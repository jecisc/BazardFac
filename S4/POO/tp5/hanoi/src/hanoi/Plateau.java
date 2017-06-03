package hanoi;

import hanoi.util.*;
import drawing.*;
/**
 * la classe du jeu  définie et manipule les 3 tours 
 * Certaines méthodes ne seront pas utilisées dans la version récursive
 * @author D.M. 
 * @version Fevrier 2014
 */
public class Plateau{

    private Tour[] lesTours;

    private int capacite;
	private  DrawPlateau dp;
	 /**
     * constructeur  de la classe Plateau
	 *@param capacite : nombre de disques
     */
    public Plateau(int capacite){
	this.capacite=capacite;
	this.lesTours=new Tour[3];
	for(int i=0;i<3;i++)
	    this.lesTours[i]=new Tour(capacite);
	for(int k=capacite;k>0;k--)
	    this.lesTours[0].empiler(new Disque(k));
	this.dp= new DrawPlateau(capacite);
    }
/** permet de récupérer une des 3 tours du plateau
* @param n le numéro de la tour (0,1,ou 2)
*/
	public Tour getTour(int n){
		return this.lesTours[n];
	}
  /** Le déplacement (la vérification <i>deplacementPossible</i> doit être faite avant) 
  * d'invoquer cette méthode
  *@param depart La tour où on prélève le disque
  *@param arrivee La tour où on dépose le disque
  */

    public void deplacerUnDisque(int depart,int arrivee){
	this.lesTours[arrivee].empiler(this.lesTours[depart].depiler());
	affichage();
    }
  /** Indique si le déplacement est autorisé
  *@param depart La tour où on prélève l'anneau
  *@param arrivee La tour où on dépose l'anneau
  *@return vrai quand la tour d'arrivée peut 
  * récevoir l'anneau prélevé sur la tour de départ
  */
	public boolean deplacementPossible(int depart,int arrivee){
		return (this.lesTours[arrivee].estVide()) ||((!this.lesTours[depart].estVide()) && 
			(this.lesTours[depart].sommet().getTaille()<this.lesTours[arrivee].sommet().getTaille()));
	}
/** Affichage graphique dees 3 tours */
    public void affichage(){
	/*System.out.println("*************");
	System.out.println("TOUR #1 \n");
	System.out.println(this.lesTours[0]);
	System.out.println("TOUR #2 \n");
	System.out.println(this.lesTours[1]);
	System.out.println("TOUR #3 \n");
	System.out.println(this.lesTours[2]);*/
	 long tmp=System.currentTimeMillis();
	 while (System.currentTimeMillis()-tmp<500){/* attente : duree en millisecondes*/};
	 this.dp.dessine(this.lesTours[0].toString(),this.lesTours[1].toString(),this.lesTours[2].toString());
    }

}
