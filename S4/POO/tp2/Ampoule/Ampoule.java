
/**
 * class Ampoule
 * 
 * @author Ferlicot-Delbecque Cyril 
 * @version 28/01/2014
 */
public class Ampoule
{
    //atribut
    private Boolean etat;
    private int puissance;
    private String couleur;
    
    //Constructeur
    public Ampoule (Boolean etat, int puissance, String couleur){
        this.etat = etat;
        this.puissance = puissance;
        this.couleur = couleur;
    }
    
    //method
    /**
     * setLight
     * @return : if the light is on or off
     */
    public Boolean setLight (){
        return this.etat;
    }
    
    /**
     * allumer() : turn on the light.
     */
    public void allume(){
        this.etat=true;
    }
    
    /**
     * eteind() : turn off the light.
     */
    public void etiend (){
        this.etat = false;
    }
    
    /**
     * changColor(color) : change the color of the light
     * @para color: new color
     */
    public void changColor (String color){
        this.couleur = color;
    }
    
    /**
     * changPower (n) change the power
     * @para : n the new power
     */
    public void changPower(int n){
        this.puissance = n;
    }
}
