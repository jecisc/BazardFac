
/**
 * class Stock
 * 
 * @author Ferlicot-Delbecque Cyril
 * @version 28/01/2014
 */
public class Stock
{
    //attributs
    private int quantite;
    
    //Constructor
    /**
     * Constructor who create a new Stock
     */
    public Stock(){
        this.quantite=0;
    }
    
    /**
     * Constructor who create a new stock of n quantite
     * @para n: quantite at the begening.
     */
    public Stock(int n){
        this.quantite = n;
    }
    
    //methodes
    /**
     * getQuantite(): return an int who correspond at the attriubt quantite when we execut this method.
     * @return the "quantite" of the Stock
     */
    public int getQuantite(){
        return this.quantite ;
    }
    
    /**
     * ajoute (n): change the actual stock and add n to the Stock
     * @para n: coefficient of the increse of the Stock
     */
    public void ajoute(int n){
        this.quantite = this.quantite + n;
    }
    
    /**
     * retire (n): substract n to the quatite. If n is more important than the quantite the method put quantite to 0 and return the last quantite.
     * @para n: coefficient of the decrease of the Stock
     * @return : the quantite the method substract to the quantite. 
     */
    public int retire (int n) {
        if (n <= this.quantite){
            this.quantite = this.quantite - n;
            return n;
        }
        else {
            int oldNumber;
            oldNumber = this.quantite;
            this.quantite = 0;
            return oldNumber;
        }
            
    }
    
    /**
     * toString(): return a String who say how many we've on the Stock
     * @return: String
     */
    public String toString(){
        return "la quantite en stock est de "+this.quantite;
    }
}
