package image.color;

/**
 * Classe GrayColor: Classe sur les niveaux de gris d'une image.
 * TP7 - POO
 * @author Ferlicot-Delbecque Cyril
 */

public class GrayColor {
    // Attributs

    public static final GrayColor WHITE = new GrayColor(255);

    public static final GrayColor BLACK = new GrayColor(0);

    private int level;

    //Constructeurs
    
    /**
     * Constructeur du la classe GrayColor.
     * @param level : Niveau de gris que l'on souhaite.  0 <= level < 256
     * 
     */
    public GrayColor(int level)    {
	if ( 0 <= level && level <= 255)
	    this.level = level;
	else
	    if( 0 > level)
		this.level =  0;
	    else
		this.level =  255;
    }

    // Methodes
    /**
     * Retourne le niveau de gris de l'objet.
     * @return le level.
     */
    public int getLevel(){
	return this.level;
    }

    /**
     * Modifie le niveau de gris de l'objet. (Utilisé pour Pixel.java)
     * @param level : nouveau niveau de gris.
     */
    public void setLevel(int level){
	this.level = level;
    }
    
    /**
     * Permet de comparer notre Objet à un autre objet.
     * @param o : objet à comparer.
     * @return true si les niveaux de gris sont identiques, false sinon.
     */
    public boolean equals (Object o){
	if (o instanceof GrayColor) {
	    GrayColor obj=  (GrayColor) o;
	    return (obj.getLevel() == this.level);
	}
	else
	    return false;
    }
}