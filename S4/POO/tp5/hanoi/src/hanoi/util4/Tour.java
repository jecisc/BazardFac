package hanoi.util;
import java.util.ArrayList;
import java.util.Iterator;


public class Tour {

  //  private ArrayList<Disque> lesDisques;      //possible mais :
     private java.util.List<Disque> lesDisques;// mieux utiliser l'interface
     private int capacite;

    public Tour(int capacite){
	this.capacite=capacite;
	this.lesDisques=new ArrayList<Disque>();
    }

    public int getCapacite(){
	return this.capacite;
    }

    public int getNbDisques(){
	return this.lesDisques.size();
    }

    public boolean estPleine() {
	return this.capacite ==this.lesDisques.size();
    }
    public boolean estVide() {
	//return this.lesDisques.size() == 0;
	return this.lesDisques.isEmpty();
    }

    /** return null si la tour est vide */
    public Disque sommet() {
	if (! this.estVide()) {
	    return this.lesDisques.get(this.lesDisques.size()-1);
	}
	else {
	    return null;
	}
    } 
    
    /** ne change pas l'etat de la tour si la tour est pleine */
    public void empiler(Disque d){
	if (! this.estPleine()) {
	    this.lesDisques.add(d);
	}
    }

    /** return null si la tour est vide */
    public Disque depiler(){
	if (! this.estVide()) {	    
	    return this.lesDisques.remove(this.lesDisques.size()-1);
	}
	else {
	    return null;
	}
    }

    public String toString(){
	String result="";
	/*for(int i=this.lesDisques.size();i>0;i--){
	    result =  this.lesDisques.get(i-1)+  ","+result;
	}
	return result */
	/*for (Iterator<Disque>  it = lesDisques.iterator() ; it.hasNext();)
	    result = result+  ","+it.next();
	return result.equals("")?"":result.substring(1); */
	Iterator<Disque>  it = lesDisques.iterator() ;
	if (it.hasNext() ) result += it.next();
	for (; it.hasNext();)
	    result = result+  ","+it.next();
	return result;  
    }

}
