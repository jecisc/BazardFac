package image;

import image.color.GrayColor;

/**
 * Classe Pixel contient la couleur d'un pixel.
 * Tp07 -POO
 * Lesage Yann
 */
public class Pixel{
    //Attribute
    private GrayColor color;
    
    //Contructeurs
    /**
     *@param color : le niveau de gris
     */
    public Pixel( GrayColor color){
	this.color =  color;
    }

    //Methodes
    /**
     *@param newColor :le niveau de gris
     */
    public void setColor(GrayColor newColor){
	this.color= newColor ;
    }

    /**
     *@return GrayColor : le niveau de gris
     */
    public GrayColor getColor(){
	return this.color;
    }
    
    /**
     *@return int : la difference de niveaux de gris entre deux pixel
     */
    public int colorDifference(Pixel pix){
	return Math.abs(this.getColor().getLevel() - pix.getColor().getLevel());
    }
}
