
/**
 * class Marchandise
 * 
 * @author Ferlicot-Delbecque Cyril
 * @version 28/01/2014
 */
public class Marchandise
{
    //attributs
    private float value;
    private String name;
    
    // Constructeurs
    /**
     * Constructor which take a String in parametre and create a new Marchandise of this name with 0 in value.
     * @para name : name of the Marchandise
     */
    public Marchandise (String name){
        this.value = 0;
        this.name= name;
    }
    
    /**
     * Constructor which create a new Marchandise with name in name and value in value.
     * @para name: the name of the Marchandise
     * @para value: the value of the Marchandise
     */
    public Marchandise (String name, float value){
        this.value = value;
        this.name= name;
    }
    
    //method
    /**
     * getValue return the value of the Marchandise.
     * @return: value of the Marchandise
     */
    public float getValue(){
        return this.value;
    }
    
    /**
     * addValue(n): add n to the value
     * @para n: coefficient of the increse of the value
     */
    public void addValue(float n){
        this.value = this.value +n;
    }
    
    /**
     * subValue(n): substract n to the value. If n is more important than the value the method put the value to 0 and return the last value.
     * @para n: coefficient of the decrease of the value
     * @return : the value the method substract to the value. 
     */
    public float subValue (float n) {
        if (n <= this.value){
            this.value = this.value - n;
            return n;
        }
        else {
            float oldValue;
            oldValue = this.value;
            this.value = 0;
            return oldValue;
        }
    }
        
    /**
     * getName(): return the name of the Marchandise.
     * @return : the name of the marchandise.
     */
    public String getName (){
        return this.name;
    }
    
    /**
     * toString(): reutnr a String which give the name and the value of the Marchandise
     * @return : a String with the value and the name of the Marchandise
     */
    public String toString (){
        return "La marchandise "+this.name+" vaut "+this.value; 
    }
    
    /**
     * addTaxe(): return the value of the Marchandise with the TVA
     * @return : the value with the TVA.
     */
    public float addTaxe(){
        return (this.value + (this.value / 100 * 19.6f));
    }
}
    

