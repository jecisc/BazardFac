package hanoi.util;


// Pas de levee d'exception
public class Tour {

    private Disque[] lesDisques;
    private int capacite;
    private int nbDisques;

    public Tour(int capacite){
	this.capacite=capacite;
	this.lesDisques=new Disque[capacite];
	this.nbDisques=0;
    }

    public int getCapacite(){
	return this.capacite;
    }

    public int getNbDisques(){
	return this.nbDisques;
    }

    public boolean estPleine() {
	return this.capacite == this.nbDisques;
    }
    public boolean estVide() {
	return this.nbDisques == 0;
    }

    /** return null si la tour est vide */
    public Disque sommet() {
	if (! this.estVide()) {
	    return this.lesDisques[this.nbDisques-1];
	}
	else {
	    return null;
	}
    }
    
    /** ne change pas l'etat de la tour si la tour est pleine */
    public void empiler(Disque d){
	if (! this.estPleine()) {
	    this.lesDisques[this.nbDisques]=d;
	    this.nbDisques++;
	}
    }

    /** return null si la tour est vide */
    public Disque depiler(){
	if (! this.estVide()) {
	    this.nbDisques--;
	    return this.lesDisques[this.nbDisques];
	}
	else {
	    return null;
	}
    }

    public String toString(){
	String result="";
	for(int i=this.nbDisques;i>0;i--){
	    result = this.lesDisques[i-1] + ","+result;
	}
	return result;
    }

}
