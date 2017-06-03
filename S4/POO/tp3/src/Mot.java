
/**
 * Classe Mot : operations sur des mots (tp3) 
 * licence S4 - UE POO
 * @author : FerlicotDelbecque Cyril
 */ 

public class Mot {

    // ATTRIBUTS
    private String valeur;


    // CONSTRUCTEURS
    public Mot(String s) {
	this.valeur = s;
    }


    // METHODES

    /**
     *Principal function for test the 'longueur' and the 'toString' all the methods
     */
    public static void main(String[] args) {
		Integer var = 20*8;
		System.out.println(var + var*10 - var+12);




	if (args.length <= 0) {
	    System.out.println("usage : Java Mot <unMot>");
	    System.exit(0);
	}

	Mot unMot = new Mot(args[0]);
	Mot jour = new Mot("jour");
	System.out.println(unMot.longueur());
	System.out.println(unMot);
	System.out.println(unMot.nbOccurrencesOfChar('c'));
	System.out.println(unMot.inverse());
	System.out.println(unMot.contient(jour));
	System.out.println(unMot.rimeAvec(jour));
	System.out.println(unMot.extraitAvant('j'));
	System.out.println(unMot.estPalindrome());
	System.out.println(unMot.estAnagramme(jour));
	System.out.println(unMot.estNomPropre());
    }

    /** vaut vrai <code>o</code> est egal a ce mot, c'est-a-dire si
     * <code>o</code> est un Mot et si sa valeur est la meme que celle
     * de ce mot
     * @param o l'objet a comparer a ce mot
     * @return <code>true</code> ssi <code>o</code> est un Mot et sa
     * valeur est la meme que celle de ce mot
     */
    public boolean equals(Object o) {
	if (o instanceof Mot) {
	    Mot lAutre = (Mot) o;
	    return this.valeur.equals(lAutre.valeur);
	}
	else {
	    return false;
	}
    }


    /** 
     *'longueur' return the number of letters on the 'Mot'. 
     *@return the number of letters of the 'Mot'. 
     */
    public int longueur(){
	return (this.valeur.length());
    }

    /** 
     * 'toString' print the 'Mot'.
     * @return String which correspond to the 'Mot'.
     *
     */
    public String toString(){
	return this.valeur;
    }


    /**
     *return the number of a certain character in a String.
     *@param a character
     *@return the number of this character in the 'Mot'
     */
    public int nbOccurrencesOfChar(char c) {
	int cpt;
	int arrive;
	arrive=this.valeur.indexOf(c);
	cpt = 0;
	while(arrive != (-1)){
	    cpt++;
	    arrive = this.valeur.indexOf(c, ++arrive);
	}

	return cpt;
    } 


    /** 
     * inverse() create a new object with a 'valeur' which is the reverse of the 'valeur' of our 'Mot'.
     *@return : a new 'Mot' which a 'valeur' reverse.
     *
     */
    public Mot inverse() {
	String val;
	int longe;
	val = "";
	longe = this.longueur();
	for (int i = longe-1; i != -1; i--){
	    val = val + Character.toString(this.valeur.charAt(i));
	}
	
	return (new Mot(val));
    }


    /** 
     * estPalindrome return a boolean which say if a 'Mot' is a 'Palindrome' or not.
     * @return a boolean. If a word is a 'Palindrome' return true, else return false.
     */
    public boolean estPalindrome(){
	Mot inv = this.inverse();
	if (this.equals(inv))
	    return true;
	else
	    return false;
    } 


    /** 
     * Check if a word is on our 'Mot'
     * @return a boolean which say if a word is on our 'Mot'
     */
    public boolean contient(Mot m) {
	if (this.valeur.indexOf(m.valeur) == -1)
	    return false;
	else
	    return true;
    }

    /** 
     * Check if the 3 last characters are the same for the 'mot' m and our 'Mot'.
     * @return a boolean
     */
    public boolean rimeAvec(Mot m) {
	int longueur, longueurTest;
	String finMot, finMotTest;
	longueur = this.longueur();
	longueurTest = m.longueur();
	if (longueur > 2 && longueurTest >2) {
	    finMot = this.valeur.substring (longueur -3);
	    finMotTest = m.valeur.substring (longueurTest -3);
	    Mot fin = new Mot(finMot);
	    Mot finTest = new Mot (finMotTest);
	    if (fin.contient(finTest))
		return true;
	    else
		return false;
	}
	else
	    return false;
	
    }

    /** 
     * Function which allow to know if a 'Mot' is a 'Nom propre'.
     *@return true if the 'Mot' is a 'Nom propre' esle return false.
     */
    public boolean estNomPropre() {
	if ( Character.isUpperCase(this.valeur.charAt(0)))
	    return true;
	else
	    return false;
    }



    /** 
     * Allow to know if a 'Mot' we send is an 'Anagramme' of our 'Mot'.
     *@param : The word whitch can be an 'Anagramme'
     *@return : if the 'Mot' we send is an 'Anagramme of our 'Mot'.
     */
    public boolean estAnagramme(Mot m) {
	boolean res = true;
	int indice = 0;
	while( indice < this.longueur() && res ){
	    if ( (this.nbOccurrencesOfChar( this.valeur.charAt(indice) )) != m.nbOccurrencesOfChar( m.valeur.charAt(indice))) 
		res = false;
	    indice++;
	}
	return res;
    }


    /** 
     * Cut a world in two.
     * @return a tab of 2 word which correspond of the two part of a 'Mot'.
     * @param 'c', we've to cut the world at the first occurence of the character 'c'.
     */
    public Mot[] extraitAvant(char c) {
	int indice;
	indice = this.valeur.indexOf(c);
	Mot res[] = new Mot[2];
	if (indice == -1){
	    res[0] = new Mot ("");
	    res[1] = this;
	}
	else {
	res[0]= (new Mot(this.valeur.substring(0,(indice +1))));	
	res[1]= (new Mot(this.valeur.substring((indice +1) , this.longueur())));
	
	}
	return res;
    }
    



}

