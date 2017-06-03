package calculette;

/**
 *Lesage Yann
 * TP09 - POO
 * class infixe : gère les operations de maniere infixé
 */

import calculette.operation.*;
import calculette.Calculette;

public class Infixe implements Calculette{


    private int dernierRes;
    private int valeurCourante;
    private String operateur;


    /**
     *Constructeur de Infixe
     */
    public Infixe(){
	this.dernierRes = 0;
	this.valeurCourante = 0;
	this.operateur = "null";
    }

    private void operation(){
	if (this.operateur.equals("+")){
	    OperationPlus op= new OperationPlus();
	    this.dernierRes = op.calcul( this.dernierRes, this.valeurCourante);
	}else if (this.operateur.equals("-")){
	    OperationMoins op= new OperationMoins();
	    this.dernierRes = op.calcul( this.dernierRes, this.valeurCourante);
	}else if (this.operateur.equals("/")){
	    OperationDiv op= new OperationDiv();
	    this.dernierRes = op.calcul( this.dernierRes, this.valeurCourante);
	}else if (this.operateur.equals("*")){
	    OperationMult op= new OperationMult();
	    this.dernierRes = op.calcul( this.dernierRes, this.valeurCourante);
        }else{/* s'il n'y a pas d'operation, alors c'est un novueau calcul*/
            this.dernierRes = this.valeurCourante;	
        }
        this.valeurCourante = 0;
    }
 
    /** Retourne la valeur courant de la calculette 
      * C'est cette valeur qui est affichée à l'écran de a calculatrice.
      * @return la valeur courante de la calculette 
    */
    public int getValeurCourante (){
	return this.valeurCourante;
    }

    /** Appui sur une touche de chiffre 
      * @param c la valeur entière correspondant à la touche chiffre enfoncée
    */
    public void enfoncerChiffre (int c){
	this.valeurCourante = this.valeurCourante*10 +c;
    }

    /** Appui sur la touche + */ 
    public void enfoncerPlus () {
	this.operation();
	this.operateur = "+";
    }

    /** Appui sur la touche - */ 
    public void enfoncerMoins () {
	this.operation();
	this.operateur = "-";
    }

    /** Appui sur la touche / */ 
    public void enfoncerDiv () {
	this.operation();
	this.operateur = "/";
    }

    /** Appui sur la touche * */ 
    public void enfoncerMult (){
	this.operation();
	this.operateur = "*";
    }

    /** Appui sur la touche = */ 
    public void enfoncerEgal () {
	if (this.operateur == "null"){ 
	    this.valeurCourante = this.dernierRes;
	}else {
	    this.operation();
	    this.valeurCourante = this.dernierRes;
	    this.operateur ="null";
	}
    }
    

    /** Appui sur la touche Del */ 
    public void enfoncerDel (){
	this.valeurCourante = this.valeurCourante/10;
    }

    /** Appui sur la touche CC */ 
    public void enfoncerRaz (){
	this.dernierRes = 0;
	this.valeurCourante = 0;
	this.operateur = "null";
    }


}
