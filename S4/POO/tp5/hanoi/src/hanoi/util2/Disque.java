package hanoi.util;

public class Disque {

    private int taille;
    private Disque sous;

    public Disque(int t){
	this.taille=t;
    }

    public int getTaille(){
	return this.taille;
    }
    
    public Disque getDessous(){
	return this.sous;
    }    

    public void setDessous(Disque sous){
	 this.sous = sous;
    }

    public String toString(){
	return ""+this.taille;
    }
}
