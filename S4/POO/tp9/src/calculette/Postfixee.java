package calculette;

import java.util.Stack;
import calculette.Operation;
import calculette.operation.*;

/**
 * Ferlicot-Delbecque Cyril
 * TP9 - POO
 * Class Postfixee : implements Calculette et effectue les calculs de manières postfixee.
 */
public class Postfixee implements Calculette{

    //Attributs.
    /**
     * Valeur de ce qui est actuellement tape.
     */
    private int valeurCourante;

    /**
     * Pile permetant de stocker nos valeurs et opérations.
     */
    private Stack<Integer> pile;

    //Constructeur.
    public Postfixee (){
	this.valeurCourante = 0;
	this.pile = new Stack<Integer>();
	this.pile.push(0);
    }

    //Methodes.
    
    /** Retourne la valeur courant de la calculette 
     * C'est cette valeur qui est affichée à l'écran de a calculatrice.
     * @return la valeur courante de la calculette 
     */
    public int getValeurCourante(){
	return this.valeurCourante;
    };


    /** Appui sur une touche de chiffre 
     * @param c la valeur entière correspondant à la touche chiffre enfoncée
     */
    public void enfoncerChiffre(int c){
	int tmp = this.pile.pop();
	tmp = tmp * 10 + c;
	this.valeurCourante = tmp;
	this.pile.push(tmp);
    };


    /** 
     *Appui sur la touche + 
     */ 
    public void enfoncerPlus(){
	int c1; int c2; int res;
	try{
	    c1 = this.pile.pop();
	}
	catch(Exception  e){
	    c1 = 0;
	}
	try{
	    c2 = this.pile.pop();
	}
	catch(Exception  e){
	    c2 = 0;
	}
	    Operation plus = new OperationPlus();
	    res = plus.calcul(c1, c2);
	    this.pile.push(res);
	    this.valeurCourante = res;
	    
    };

    /** 
     *Appui sur la touche -
     */ 
    public void enfoncerMoins(){
	int c1; int c2; int res;
	try{
	    c1 = this.pile.pop();
	}
	catch(Exception  e){
	    c1 = 0;
	}
	try{
	    c2 = this.pile.pop();
	}
	catch(Exception  e){
	    c2 = 0;
	}
	    Operation moins = new OperationMoins();
	    
	    res = moins.calcul(c2, c1);
	    this.pile.push(res);
	    this.valeurCourante = res;
	
    };

    /**
     * Appui sur la touche / 
     */ 
    public void enfoncerDiv(){
	int c1; int c2; int res;
	try{
	    c1 = this.pile.pop();
	}
	catch(Exception  e){
	   c1 = 0;
	}
	try{
	   c2 = this.pile.pop();
	}
	catch(Exception  e){
	    c2 = 0;
	}
	    Operation div = new OperationDiv();
	    
	    res = div.calcul(c2, c1);
	    this.pile.push(res);
	    this.valeurCourante = res;

    };

    /** 
     *Appui sur la touche *
     */ 
    public void enfoncerMult(){
	int c1; int c2; int res;
	try{
	   c1 = this.pile.pop();
	}
	catch(Exception  e){
	   c1 = 0;
	}
	try{
	    c2 = this.pile.pop();
	}
	catch(Exception  e){
	    c2 = 0;
	}
	    Operation mult = new OperationMult();
	 
	    res = mult.calcul(c1, c2);
	    this.pile.push(res);
	    this.valeurCourante = res;

    };

    /** 
     *Appui sur la touche =
     */ 
    public void enfoncerEgal(){
	this.pile.push(0);
	this.valeurCourante = 0;
    };

    /**
     * Appui sur la touche Del
     */ 
    public void enfoncerDel(){
	this.pile.pop();
	try{
	this.valeurCourante = this.pile.pop();
	}
	catch (Exception e){
	    this.valeurCourante = 0;
	}
	this.pile.push(valeurCourante);
	enfoncerEgal();
    };

    /** 
     *Appui sur la touche CC
     */ 
    public void enfoncerRaz(){
	this.valeurCourante = 0;
	this.pile = new Stack<Integer>();
	this.pile.push(0);
    };
    
}
	