package drawing;

import java.io.*;
import drawing.*;
import java.awt.*;

/**
 *  classe  de dessin  d'u plateau pour tour de Hanoi
 *
 *@author   Didier Mailliet 
 */
public class DrawPlateau {
	private Drawing p;
	int nb,h,w;
   /**
   * initialise les 3 tours de hanoi
   * @param     nb  nombre de disques total
   */ 	
public  DrawPlateau(int nb) {
	this.nb=nb;
	this.h=nb*10+30;
	this.w = 3*nb*20+40;
	this.p=new DrawingFrame(w,h);
}
  
   /**
   * Dessine les 3 tours de hanoi
   * @param     t1  chaine de caracteres  les tailles des disques de la tour 1 (de gauche) separees par des virgules
   * @param     t2  chaine de caracteres  les tailles des disques de la tour 2 (du centre) separees par des virgules
   * @param     t3  chaine de caracteres  les tailles des disques de la tour 3 (de droite) separees par des virgules
  */
public void dessine(String t1,String t2,String t3) {
	try{
		p.reset();
		p.setColor(Color.CYAN);
		if (t1 != ""){
			String[] v = t1.split(",");
			int l= v.length;
			for (int i = 0;i<l;i++) {
				int lg=Integer.parseInt(v[i]);
				p.fillRect (10+(nb-lg)*10,22+(nb-i+1)*10 ,lg*20,10);
			}
		}
		if (t2 != ""){
			String[] v = t2.split(",");
			int l= v.length;
			for (int i = 0;i<l;i++) {
				int lg=Integer.parseInt(v[i]);
				p.fillRect (20+nb*30-lg*10,22+(nb-i+1)*10 ,lg*20,10);
			}
		}
		if (t3 != ""){
			String[] v = t3.split(",");
			int l= v.length;
			for (int i = 0;i<l;i++) {
				int lg=Integer.parseInt(v[i]);
				p.fillRect (30+nb*50-lg*10,22+(nb-i+1)*10 ,lg*20,10);
			}
		}	
		p.setColor (Color.BLACK);
		//les horizontales
		p.goTo(10,20+nb*10);
		p.drawTo(10+nb*20,20+nb*10);
		p.goTo(20+nb*20,20+nb*10);
		p.drawTo(20+nb*40,20+nb*10);
		p.goTo(30+nb*40,20+nb*10);
		p.drawTo(30+nb*60,20+nb*10);
		//les verticales
		p.goTo(10+nb*10,20+nb*10);
		p.drawTo(10+nb*10,20);
		p.goTo(20+nb*30,20+nb*10);
		p.drawTo(20+nb*30,20);
		p.goTo(30+nb*50,20+nb*10);
		p.drawTo(30+nb*50,20);
	}catch (Exception e){}
}


}
