package naval;
import naval.*;
import naval.direction.*;

/**
 * Classe permettant de modeliser le plateau du jeu. 
 * POO - Ferlicot-Delebcque Cyril - TP6
 * @author : Ferlicot-Delbecque Cyril
 */
public class Mer{

    //Attribut
    private Case[][] plateau;

    //Constructeur
    
    /**
     * Constructeur de la classe Mer. Prend en parametre deux entiers pour definir la longueur et la largueur du plateau.
     * @param nl : le nombre de ligne du plateau.
     * @param nc : le nombre de colonne du plateau.
     */
    public Mer (int nl, int nc){
	this.plateau = new Case[nl][nc]; 
	for (int i = 0; i <nl ; i++){
	    for (int j = 0 ; j < nc ; j++){
		this.plateau[i][j] = new Case(); //Completion du plateau avec de nouvelles cases.
	    }
	}	
    }

    //Methodes


    public static enum Reponse{DANS_LEAU, TOUCHE, COULE;}

    /**
     * Reponse lors de l'attaque d'un joueur. 
     *@return : DANS_LEAU s'il n'y a pas de Bateau. TOUCHE si on touche un bateau qui a plus d'un point de vie. COULE si on touche un bateau qui a qu'un point de vie.
     * @exception ArrayIndexOutOfBoundsException si la position est en dehors de la mer.
     */
    public Reponse vise(Position p)throws ArrayIndexOutOfBoundsException{
	Case c = this.plateau[p.getX()][p.getY()];
	Bateau bateau = c.getBateau();

	if (bateau == null){ // Voir s'il y a un bateau
	    c.visee();
	    return Reponse.DANS_LEAU; }
	else if (!(c.aEteVisee())){ // Sinon vérifier si la case n'a jamais été visée
	    c.visee();
	    bateau.toucher();
	    if (bateau.estCouler()) // Vérifier si le bateau est coulé 
		return Reponse.COULE;
	    else
		return Reponse.TOUCHE;
	}
	else
	    return Reponse.DANS_LEAU;
    }

    /**
     * afficher le plateau de jeu ligne par ligne, case par case avec un affichage pour l'attaquant et un affichage pour le defenseur.
     *@param defenseur : true si l'affichage est pour le defenseur. 
     */
    public void affichage(boolean defenseur){
	if (defenseur) {
	    for (int j = 0 ; j < this.plateau.length ; j++){
		for (int i = 0; i < this.plateau[0].length; i++){
		    System.out.print("__");
		}
		System.out.println("_");
		for (int i = 0; i < this.plateau[0].length; i++){
		    System.out.print("|");
		    System.out.print(this.plateau[j][i].getCaractere(true));
		}
		System.out.println("|");
			
	    }
	    for (int i = 0; i < this.plateau[0].length; i++){
		System.out.print("__");
	    }
	    System.out.println("_");
	}
	else {
	    for (int j = 0 ; j < this.plateau.length ; j++){
		for (int i = 0; i < this.plateau[0].length; i++){
		    System.out.print("__");
		}
		System.out.println("_");
		for (int i = 0; i < this.plateau[0].length; i++){
		    System.out.print("|");
		    System.out.print(this.plateau[j][i].getCaractere(false));
		}
		System.out.println("|");
			
	    }
	    for (int i = 0; i < this.plateau[0].length; i++){
		System.out.print("__");
	    }
	    System.out.println("_");


	}

    }

    /**
     * Pose le bateau b à partir de la position p dans la direction d.
     * Le nombre de case occupee est determinee par la longueur du bateau.
     * @param b : le bateau a poser
     * @param p : la position de la premiere case ou l'on pose le bateau
     * @param d : la direction dans laquelle on pose b a partir de p
     * @exception IllegalStateException si on ne peut poser b a partir de p dans la direction d parce que b sortirait du plateau ou parce qu'un autre bateau occupe deja une des cases.
     */
    public void poseBateau ( Bateau b, Position p, Direction d)throws IllegalStateException{
	Bateau bateau = null;
	Position position = p;
	for (int i = 0; i < b.getPointDeVie(); i++){
	    try{
		bateau = this.plateau[position.getX()][position.getY()].getBateau();
	    }
	    catch(ArrayIndexOutOfBoundsException e){
		throw new IllegalStateException ("Position "+position.getX() + " ; " + position.getY() + "n'est pas dans la Mer.");
	    }
	    if (bateau != null)
		throw new IllegalStateException("La position est déjà occupée par un bateau");
	    position = d.positionSuivante(position);
	}
	position = p; 
	for (int i =0 ; i < b.getPointDeVie(); i++){
	    this.plateau[position.getX()][position.getY()].setBateau(b);
	    position= d.positionSuivante(position);
	}
    }
}