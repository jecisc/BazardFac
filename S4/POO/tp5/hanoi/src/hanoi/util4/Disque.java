package hanoi.util;

public class Disque {

    private int taille;

    public Disque(int t){
	this.taille=t;
    }

    public int getTaille(){
	return this.taille;
    }

    public String toString(){
	return ""+this.taille;
    }
}
