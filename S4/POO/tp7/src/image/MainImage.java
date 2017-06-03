package image;

import image.*;
import image.color.*;

/**
 * Classe MainImage: Classe d'exemple sur les images.
 * TP7 - POO
 * @author Ferlicot-Delbecque Cyril
 */

public class MainImage {
    
    /** 
     * La méthode principale de notre classe 
     */
    public static void main(String[] args){
	if (args.length != 3) {
	    System.out.println("usage : Java -cp image.MainImage /images/nom_image.pgm seuil niveauGris ");
	    System.exit(0);
	}
	
	Image image = Image.initImagePGM(args[0]);
	ImageDisplayer disp = new ImageDisplayer();
	disp.display(image, "Image normale.", 0, 0);
	Image imageEdges = image.edges(Integer.parseInt(args[1]));
	disp.display(imageEdges, "Image avec extraction de contour.", 0, 0);
	Image imageDecrease = image.decreaseGrayLevels(Integer.parseInt(args[2]));
	disp.display(imageDecrease, "Image avec réduction du niveau de gris.", 0, 0);
    }

}