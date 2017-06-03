package calculette;

import calculette.Infixe;
import calculette.Postfixee;
import calculette.VueCalculette;
import calculette.TexteCalculette;

public class Calculatrice{
    public static void main (String[] arg){
	String rep = "";
	while ((rep.length() != 2) || "PI".indexOf(rep.charAt(0)) < 0 || "GT".indexOf(rep.charAt(1)) < 0)
	    rep = System.console().readLine("Enter something: IG or PG or IT or PT \n").toUpperCase();
	if (rep.charAt(1) == 'G')
	    if(rep.charAt(0) == 'I')
		new VueCalculette (new Infixe()).lancer();
	    else
		new VueCalculette (new Postfixee()).lancer();
	else
	    if (rep.charAt(0)=='I')
		new TexteCalculette (new Infixe()).lancerI();
	    else
		new TexteCalculette (new Postfixee()).lancerP();
    }
}
	