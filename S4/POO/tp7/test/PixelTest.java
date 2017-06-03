import org.junit.*;
import static org.junit.Assert.*;

import image.color.*;
import image.Pixel;

/**
 *test de la classe Pixel. 
 * Lesage Yann
 */


public class PixelTest {	

    @Test
    public void testGetColor() {
	GrayColor coul = new GrayColor(100);
	Pixel pix = new Pixel( coul);
	assertEquals("valeur ?", pix.getColor(), coul);
    }

    @Test
    public void testSetColor() {
	Pixel pix = new Pixel(new GrayColor(100));
	GrayColor coul = new GrayColor(150);
	pix.setColor(coul);
	assertEquals("valeur ?", pix.getColor(), coul );
    }

    @Test
    public void testColorDifference() {
	Pixel pix = new Pixel(new GrayColor(100));
	Pixel pixD= new Pixel(new GrayColor(50));
	Pixel pixT= new Pixel (new GrayColor(150));
	assertEquals("valeur ?", pix.colorDifference(pixD), 50);
	assertEquals("valeur ?", pix.colorDifference(pixT), 50);
    }

    // ---Pour permettre l'execution des test----------------------
    public static junit.framework.Test suite() {
	return new junit.framework.JUnit4TestAdapter(PixelTest.class);
    }

}
