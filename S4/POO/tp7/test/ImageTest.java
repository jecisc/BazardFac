import org.junit.*;
import static org.junit.Assert.*;

import image.color.*;
import image.Pixel;
import image.Image;

/**
 *test de la classe Pixel. 
 * Lesage Yann
 */


public class ImageTest {	

    @Test
    public void testGetWidth() {
	Image img = new Image(100,200);
	assertEquals("largeur ?", img.getWidth(), 100);
    }

    @Test
    public void testGetHeight() {
	Image img = new Image(100,200);
	assertEquals("hauteur ?", img.getHeight(), 200);
    }

    @Test
    public void testChangeColorPixel() {
	Pixel pix = new Pixel(new GrayColor (100));
	Image img = new Image(100,200);
	img.changeColorPixel(10,10, new GrayColor(100));
	assertEquals("couleur changer?", img.getPixel(10,10).colorDifference(pix), 0);
    }



    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(ImageTest.class);
    }

}
