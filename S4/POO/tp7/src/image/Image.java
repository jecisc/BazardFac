package image;

import image.color.GrayColor;
import image.Pixel;
import java.util.Scanner;

public class Image {
    private Pixel[][] tabPixel;

    //Constructeurs
    public Image( int largeur, int hauteur){
	this.tabPixel = new Pixel[largeur][hauteur];
	for(int i=0; i< largeur; i++){
	    for(int j=0; j< hauteur; j++){
		this.tabPixel[i][j] = new Pixel( GrayColor.WHITE);
	   } 
	}
    }

    //Methode
    /**
     *@return int : largeur du tableau
     */
    public int getWidth(){
	return this.tabPixel.length;
    }

    /**
     *@return int : hauteur du tableau
     */
    public int getHeight(){
	return this.tabPixel[0].length;
    }
    
     /**
     * @param x 
     * @param y
     * @return Pixel de coordonnee x,y
     */
    public Pixel getPixel(int x, int y) throws ArrayIndexOutOfBoundsException{
	return this.tabPixel[x][y];    
    }

    /**
     * @param x 
     * @param y
     * @param color  
     */
    public void changeColorPixel(int x, int y,GrayColor color) throws ArrayIndexOutOfBoundsException{
	this.tabPixel[x][y].setColor(color);    
    }

    // COMPLETER

    /**
     * @param threshold
     * @return une image avec les contour en noir, le reste en blanc
     */
    public Image edges(int threshold){
	Image resultat = new Image(this.getWidth(), this.getHeight());
	for(int i=0; i<(this.tabPixel.length-1); i++){
	    for(int j=0; j<(this.tabPixel[i].length-1); j++){
		if (this.tabPixel[i][j].colorDifference(this.tabPixel[i][j+1])>threshold){
		    resultat.changeColorPixel( i, j, GrayColor.BLACK);
		}else if (this.tabPixel[i][j].colorDifference(this.tabPixel[i+1][j])>threshold){
		    resultat.changeColorPixel( i, j, GrayColor.BLACK);
		}else{
		    resultat.changeColorPixel( i, j, GrayColor.WHITE);
		}
	   } 
	}
	return resultat;
    }

    /**
     * @param nbGrayLevels : nombre de niveau de gris different
     * @return une image avec ndGrayLevels niveau de gris
     */
    public Image decreaseGrayLevels(int nbGrayLevels){
	Image resultat = new Image(this.getWidth(), this.getHeight());
	for(int i=0; i<this.tabPixel.length; i++){
	    for(int j=0; j<this.tabPixel[i].length; j++){
		int niveau = ((int)(this.tabPixel[i][j].getColor().getLevel() / (256/nbGrayLevels) ))*nbGrayLevels;
		resultat.changeColorPixel( i, j, new GrayColor(niveau));
	   } 
	}
	return resultat;
    }

    

    // ======================================================================
    /** Lecture d'un fichier image au format PGM.
     * On suppose que le fichier respecte la syntaxe suivante :
     *  <ul><li> première ligne :  chaîne "P2"</li>
     *  <li>seconde ligne : un commentaire</li> 
     *  <li>un entier pour la largeur <code>l</code>, un entier pour la hauteur <code>h</code></li>
     *  <li>un entier pour le niveau de gris max (pas utilisé par la suite, pour nous max = 255)</li>
     *  <li><code>l</code> x <code>h</code> entiers entre 0 et max (pour nous =255) pour chacun des pixels</li></ul>
     *  
     *  @param fileName le nom du fichier qui contient l'image
     *  @return l'image créée à partir du fichier
     */
    public static Image initImagePGM(String fileName) {
        Scanner scan = new Scanner(Image.class.getResourceAsStream(fileName));

        scan.nextLine(); // ligne P2
        scan.nextLine(); // ligne commentaire
        int width = scan.nextInt();
        // scan.nextLine();
        int height = scan.nextInt();
        scan.nextInt(); // niveau de gris max
        // creation de l'image initialement blanche
        Image result = new Image(width, height); 
        for (int x = 0; x < height; x++) {
            // scan.nextLine();
            for (int y = 0; y < width; y++) {
                result.changeColorPixel(y, x, new GrayColor(scan.nextInt()));
            }
        }
        return result;
    }

}
