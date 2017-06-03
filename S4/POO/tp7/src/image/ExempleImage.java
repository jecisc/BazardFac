package image;

import image.*;
import image.color.*;

/**
 * Classe ExempleImage: Classe d'exemple sur les images.
 * TP7 - POO
 * @author Ferlicot-Delbecque Cyril
 */

public class ExempleImage {
    
    /**
     * Dessine dans une image.
     * dessine ( level, lar, lon, lainit, loinit, image): dessine un rectangle dans l'image de niveau de gris level, de taille lar * lon à partir du point lainit * loinit.
     * @param level : Niveau de gris
     * @param lar : Largeur du rectangle
     * @param lon : Longueur du rectangle
     * @param lainit : largeur de départ
     * @param loinit : longueur de départ
     * @param image : image à modifier
     */
    public static void dessine (GrayColor level, int lar, int lon, int lainit, int loinit, Image image){
	for ( int i = lainit ; i < (lainit + lar) ; i++){
	    for ( int j = loinit ; j < (loinit + lon) ; j++){
		image.changeColorPixel( i, j, level);
	    }
	}
    }
    
    /** 
     * La méthode principale de notre classe 
     */
    public static void main(String[] args){
	Image I = new Image(100, 200);
	ImageDisplayer disp = new ImageDisplayer ();
	GrayColor gris64 = new GrayColor (64);
	GrayColor gris230 = new GrayColor (230);
	dessine ( GrayColor.BLACK, 20, 30, 10, 30, I);
	dessine ( gris64, 20, 50, 50, 50, I);
	dessine ( gris230, 20, 50, 20, 110, I);
	disp.display( I, "Image de test du Main", 0, 0);
	Image i50 = I.edges(50);
	Image i150 = I.edges(150);
	Image i200 = I.edges(200);
	disp.display(i50, "Image de test du Main avec un seuil de 50", 0, 0);
	disp.display(i150, "Image de test du Main avec un seuil de 150", 0, 0);
	disp.display(i200, "Image de test du Main avec un seuil de 200", 0, 0);
	
    }

}