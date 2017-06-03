package drawing;

/**
 *  Drawing interface. </br> It is possible to put the pen on a precise point
 *  and to draw a line from the current point to another one.
 *
 *@author     Anne-Cecile Caron - Didier Mailliet
 *@created    3 mars 2008
 */
public interface Drawing {

/**
   *  Draw a line from the current point to p
   *  p becomes the current point
   *
   *@param  p                     point
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void drawTo(java.awt.Point p) throws DrawingException ;
/**
   *  Draw a line from the current point to (x,y)
   *  p becomes the current point
   *
   *@param x abscice
   *@param y ordonnee
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void drawTo(int x , int y) throws DrawingException ;

  /**
   *  Go to the current point p without drawing a line.
   *
   *@param  p                     point
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void goTo(java.awt.Point p) throws DrawingException;
/**
   *  Go to the current point p without drawing a line.
   *
   *@param x abscice
   *@param y ordonnee
   *@exception  DrawingException  if p has not correct coordinates : x must belong to [0,XMAX] and y to [0,YMAX]
   */
  public void goTo(int x , int y) throws DrawingException ;
  
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
public void drawRect(int x, int y, int width, int height) throws DrawingException;
     /**
   * Fills the specified rectangle. 
   * The left and right edges of the rectangle are at x and x + width - 1. 
   * The top and bottom edges are at y and y + height - 1. 
   * The resulting rectangle covers an area width pixels wide by height pixels tall. 
   * The rectangle is filled using the graphics context's current color.
   * @param     x - the x coordinate of the rectangle to be drawn.
   * @param   y - the y coordinate of the rectangle to be drawn.
   * @param   width - the width of the rectangle t: error: method getWidth() is already defined o be drawn.
   * @param   height - the height of the rectangle to be drawn.
  */
public void fillRect(int x, int y, int width, int height) throws DrawingException ;
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
public void drawRoundRect(int x, int y, int width, int height, int arcWidth, int arcHeight) throws DrawingException ;
   /**
   * Sets this graphics context's current color to the specified color. 
   * All subsequent graphics operations using this graphics context use 
   *  this specified color.
   * @param    c - the new rendering color.: error: method getWidth() is already defined 
  */
public void setColor(java.awt.Color c);

  /**
   *  Gets the width attribute of the Drawing object
   *
   *@return    The width value
   */
  int getWidth();


  /**
   *  Gets the height attribute of the Drawing object
   *
   *@return    The height value
   */
  int getHeight();


  /**
   *  Gets the currentPoint attribute of the Drawing object
   *
   *@return    The currentPoint value
   */
  java.awt.Point getCurrentPoint();


  /**
   *  Put the Drawing object in its initial state.
   */
  void reset();
}

