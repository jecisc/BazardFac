package drawing;

import java.awt.*;
import javax.swing.*;

/**
 *  Drawing frame according to Drawing interface.
 *  Points have positive coordinates.
 *  Initially, the current point is (0,0).
 *
 *@author     Anne-Cecile Caron, Yves Roos modifie par Didier Mailliet
 */
public class DrawingFrame extends javax.swing.JFrame implements Drawing {

   // boucle d'affichage
   RenderingThread renderingThread = new RenderingThread();
   // buffer memoire (2eme buffer)
   Graphics leTrace;
   // image memoire correspondante au buffer
   Image image; 
  

  private Point ptCour;

  private final int XMAX, YMAX,HTITRE=22;

   public DrawingFrame(){this(700,500);}
  
   public DrawingFrame(int xmax, int ymax) {
    super("dessin");
    this.XMAX = xmax;
    this.YMAX = ymax+HTITRE;
	setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	//affichage
	setSize( XMAX, YMAX );
	setVisible( true );
	this.image = this.createImage(XMAX,YMAX);
	this.leTrace = this.image.getGraphics();

	this.leTrace.setColor( Color.white );
	this.leTrace.fillRect( 0, 0,XMAX,YMAX );
//	this.leTrace.setColor( Color.black );
	this.setResizable(false);
	this.showGrid();
	this.renderingThread.start(); 
   }
   
   
 private void showGrid() {
 
	leTrace.setColor( Color.white );
	leTrace.fillRect( 0, 0,XMAX,YMAX );
    // on trace la grille
    leTrace.setColor(Color.LIGHT_GRAY);
    // les lignes horizontales
    for (int i = HTITRE; i <= YMAX; i = i + 10) {
      leTrace.drawLine(0, i, XMAX, i);
    }
    // les lignes verticales
    for (int i = 0; i <= XMAX; i = i + 10) {
      leTrace.drawLine(i, 0, i, YMAX);
    }
    // couleur du futur dessin
    leTrace.setColor(Color.black);
  }
  
   public void update(Graphics g){
      paint(g);
   }
   public void paint( Graphics g ){
   
     //creation du buffer si il n'existe pas
     if(leTrace==null){
        image = createImage(XMAX,YMAX);
        leTrace = image.getGraphics();
      } 
     //on dessine sur le buffer memoire
     
      // finalement, le buffer memoire est dessine dans le buffer d'affichage
      g.drawImage(image, 0, 0, this);
   }
   class RenderingThread extends Thread {
     /**
      *  Ce thread appelle le rafraichissement de notre fenetre 
      *  toutes les 30 milli-secondes
      */
      public void run(){
         while(true){
            try {
               repaint(); 
               sleep( 30 );
            } catch ( Exception e ) {} 
         }
      }
   }  
   
   

  private void checkCoord(Point p) throws DrawingException {
    if ((p.x > XMAX) || (p.y > YMAX) || (p.x < 0) || (p.y < 0)) {
      throw new DrawingException("x must belong to [0," + XMAX + "] and y to [0," + YMAX + "]");
    }
  }

/**
   *  Draw a line from the current point to p
   *  p becomes the current point
   *
   *@param  p                     point
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void drawTo(Point p) throws DrawingException {
    checkCoord(p);
    leTrace.drawLine(ptCour.x, ptCour.y+HTITRE, p.x, p.y+HTITRE);
    ptCour = p;
  }
/**
   *  Draw a line from the current point to (x,y)
   *  p becomes the current point
   *
   *@param x abscice
   *@param y ordonnee
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void drawTo(int x , int y) throws DrawingException {
    Point p =new Point (x,y);
    checkCoord(p);
    leTrace.drawLine(ptCour.x, ptCour.y+HTITRE, x, y+HTITRE);
    ptCour = p;
  }

  /**
   *  Go to the current point p without drawing a line.
   *
   *@param  p                     point
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void goTo(Point p) throws DrawingException {
    checkCoord(p);
    ptCour = p;
  }
/**
   *  Go to the current point p without drawing a line.
   *
   *@param x abscice
   *@param y ordonnee
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void goTo(int x , int y) throws DrawingException {
    Point p =new Point (x,y);
    checkCoord(p);
    ptCour = p;
  }
  /**
   *  Gets the width attribute of the DrawingFrame object
   *
   *@return    The width value
   */
  public int getWidth() {
    return XMAX;
  }
  
   /**
   * Draws the outline of the specified rectangle. 
   * The left and right edges of the rectangle are at x and x + width. 
   * The top and bottom edges are at y and y + height. 
   * The rectangle is drawn using the graphics context's current color.
   * @param     x - the x coordinate of the rectangle to be drawn.
   * @param   y - the y coordinate of the rectangle to be drawn.
   * @param   width - the width of the rectangle to be drawn.
   * @param   height - the height of the rectangle to be drawn.
  */
public void drawRect(int x, int y, int width, int height) throws DrawingException {
	Point p =new Point (x,y);
    checkCoord(p);
    ptCour = p;
	leTrace.drawRect(x,  y, width,  height);
	}
     /**
   * Fills the specified rectangle. 
   * The left and right edges of the rectangle are at x and x + width - 1. 
   * The top and bottom edges are at y and y + height - 1. 
   * The resulting rectangle covers an area width pixels wide by height pixels tall. 
   * The rectangle is filled using the graphics context's current color.
   * @param     x - the x coordinate of the rectangle to be drawn.
   * @param   y - the y coordinate of the rectangle to be drawn.
   * @param   width - the width of the rectangle to be drawn.
   * @param   height - the height of the rectangle to be drawn.
  */
public void fillRect(int x, int y, int width, int height) throws DrawingException {
	Point p =new Point (x,y);
    checkCoord(p);
    ptCour = p;
	leTrace.fillRect(x,  y, width,  height);
	}
   /**
   * Draws an outlined round-cornered rectangle using this graphics 
   * context's current color. 
   * The left and right edges of the rectangle are at x and x + width, respectively.
   * The top and bottom edges of the rectangle are at y and y + height.
   * @param     x - the x coordinate of the rectangle to be drawn.
   * @param   y - the y coordinate of the rectangle to be drawn.
   * @param   width - the width of the rectangle to be drawn.
   * @param   height - the height of the rectangle to be drawn.
   * @param  arcWidth - the horizontal diameter of the arc at the four corners.
   * @param  arcHeight - the vertical diameter of the arc at the four corners.
  */
public void drawRoundRect(int x, int y, int width, int height, int arcWidth, int arcHeight) throws DrawingException {
	Point p =new Point (x,y);
	checkCoord(p);
	ptCour = p;
	leTrace.drawRoundRect(x,  y, width,  height , arcWidth,  arcHeight);
}
   /**
   * Sets this graphics context's current color to the specified color. 
   * All subsequent graphics operations using this graphics context use 
   *  this specified color.
   * @param    c - the new rendering color.
  */
public void setColor(Color c){
	leTrace.setColor(c);
}
  /**
   *  Gets the height attribute of the DrawingFrame object
   *
   *@return    The height value
   */
  public int getHeight() {
    return YMAX;
  }
    
  /**
   *  Put the Drawing object in its initial state.
   */
   public void reset(){
     ptCour = new java.awt.Point(0,0);
     leTrace.clearRect(0,0,XMAX,YMAX);
     this.showGrid();
   }

  /**
   *  Gets a point having the same coordinates as the current point.
   *
   *@return    The currentPoint value
   */
   public java.awt.Point getCurrentPoint(){
     return (java.awt.Point) this.ptCour.clone() ;
   }
   
   public static void main(String[] args) throws Exception{
		DrawingFrame db=new DrawingFrame();


		//db.showGrid();
		//db.leTrace.setColor(Color.black);
		//db.leTrace.drawLine(0, 0, 700, 500);
		db.goTo(new Point(0,0));
		db.drawTo(new Point(700,500));
		//	System.out.println(db.getJMenuBar().getComponent() .getHeight() );

		}
}