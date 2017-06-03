package hanoi.util;


// Pas de levee d'exception
public class Tour {

    private Disque tour;
    private int capacite;
    private int nbDisques;

    public Tour(int capacite){
	this.capacite=capacite;
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
	    return tour;
    }
    
    /** ne change pas l'etat de la tour si la tour est pleine */
    public void empiler(Disque d){
	if (! this.estPleine()) {
	    d.setDessous(this.tour);
	    this.tour=d;
	    this.nbDisques++;
	}
    }

    /** return null si la tour est vide */
    public Disque depiler(){
	Disque d =null;
	if (! this.estVide()) {
	    this.nbDisques--;
	    d=this.tour;
	    this.tour=d.getDessous();
	}
	    return d;
    }

    public String toString(){
	String result="";
	Disque d=tour;
	for(int i=this.nbDisques;i>0;i--){
	    result = d.getTaille() + ","+result;
	    d=d.getDessous();	
	}
	return result;
    }

}
