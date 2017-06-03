package calculette;

/**
 *Lesage Yann
 * TP09 - POO
 * class TexteCalculette : gère les operations de maniere infixé et postfixe 
 *                         dans un terminal
 */

import calculette.Postfixee;
import calculette.Infixe;
import util.Input;

public class TexteCalculette{

    private Calculette calculatrice; // l'objet calculette associe

    /**
     * Crée une nouvelle VueCalculette en lui associant une Calculette
     * 
     * @param c
     *            une calculette
     */
    public TexteCalculette(Calculette c) {
        this.calculatrice = c;
    }

    /** Affiche à l'écran cette VueCalculette */
    public void lancerI() {
	String entree;
	entree= "0";
	System.out.println("taper 'q' pour quitter");
	while(entree.charAt(0) != 'q'){
	    entree= "";
	    System.out.println("entrez un nombre ou une operation ( + - * / = Del Cc)");
	    entree = Input.readString();
	    if (entree.charAt(0) == '+'){
		this.calculatrice.enfoncerPlus();
	    } else if (entree.charAt(0) == '-'){
		this.calculatrice.enfoncerMoins();
	    } else if (entree.charAt(0) == '*'){
		this.calculatrice.enfoncerDiv();
	    } else if (entree.charAt(0) == '/'){
		this.calculatrice.enfoncerMult();
	    } else if (entree.charAt(0) == 'C'){
		this.calculatrice.enfoncerRaz();
	    } else if (entree.charAt(0) == 'D'){
		this.calculatrice.enfoncerDel();
	    } else if (entree.charAt(0) == '='){
		this.calculatrice.enfoncerEgal();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    }else{
		int i;
		for(i=0; i< entree.length();i++){
		    this.calculatrice.enfoncerChiffre(entree.charAt(i)-48);
		}
	    }
	    
	}
    }

    /** Affiche Postfixee à l'écran cette VueCalculette */
    public void lancerP() {
	String entree;
	entree= "0";
	System.out.println("taper 'q' pour quitter");
	while(entree.charAt(0) != 'q'){
	    entree= "";
	    System.out.println("entrez un nombre ou une operation ( + - * / = Del Cc)");
	    entree = Input.readString();
	    if (entree.charAt(0) == '+'){
		this.calculatrice.enfoncerPlus();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    } else if (entree.charAt(0) == '-'){
		this.calculatrice.enfoncerMoins();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    } else if (entree.charAt(0) == '*'){
		this.calculatrice.enfoncerDiv();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    } else if (entree.charAt(0) == '/'){
		this.calculatrice.enfoncerMult();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    } else if (entree.charAt(0) == 'C'){
		this.calculatrice.enfoncerRaz();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    } else if (entree.charAt(0) == 'D'){
		this.calculatrice.enfoncerDel();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    } else if (entree.charAt(0) == '='){
		this.calculatrice.enfoncerEgal();
		System.out.println(Integer.toString(this.calculatrice.getValeurCourante()));
	    }else{
		int i;
		for(i=0; i< entree.length();i++){
		    this.calculatrice.enfoncerChiffre((entree.charAt(i)-48));
		}
	    }
	    
	}
    }

}
