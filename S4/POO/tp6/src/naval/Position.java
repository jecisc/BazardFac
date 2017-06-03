package naval;

/**
 * Classe Position : postion d'une case visee
 * Tp 06 : bataille naval
 * Lesage Yann
 */

public class Position {
    private int x;
    private int y;
    
    /** Constructeur de Position
     *@param x : ligne de la case
     *@param y : colonne de la case
     */
    public Position( int x, int y){
	this.x = x;
	this.y = y;
    }

    /**@return  X : la ligne de la case
     */
    public int getX(){
	return this.x;
    }

    /** @return Y: la colonne de la case
     */
    public int getY(){
	return this.y;
    }
    
    /**regarde si deux positions sont identiques.
     */
    public boolean equals(Object o){
	if ( o instanceof Position ) {
	    Position unePosition = (Position) o;
	    return ((this.x == unePosition.getX()) && (this.y == unePosition.getY()));
	} else {
	    return false;
	}
    }

    /**@return une chaine de caractere sous la forme "X:Y"
     */
    public String toString(){
	return Integer.toString(this.x) +":"+ Integer.toString(this.y) ;
    }
}
