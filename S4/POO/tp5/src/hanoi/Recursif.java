package hanoi;
import hanoi.Plateau;
import hanoi.utils.*;
import drawing.*;
import io.*;


/**
 * class Recursif.
 * TP5 - POO
 * @author : Ferlicot-Delbecque Cyril
 */

public class Recursif
{

    private static void resolution (int nombreDisque, int depart, int arriver, int intermed, Plateau unPlateau, DrawPlateau graph){
	if (nombreDisque == 1){
	    unPlateau.deplacer(depart, arriver);
	    graph.dessine(unPlateau.getTour(0).toString(), unPlateau.getTour(1).toString(), unPlateau.getTour(2).toString());
	    long tmp=System.currentTimeMillis();
	    while (System.currentTimeMillis()-tmp<1000){/* attente : duree en millisecondes*/};
	}else
	    {
		resolution ((nombreDisque -1), depart, intermed, arriver, unPlateau, graph);
		unPlateau.deplacer (depart, arriver);
		graph.dessine(unPlateau.getTour(0).toString(), unPlateau.getTour(1).toString(), unPlateau.getTour(2).toString());
		long tmp=System.currentTimeMillis();
		while (System.currentTimeMillis()-tmp<1000){/* attente : duree en millisecondes*/};
		resolution ((nombreDisque -1), intermed, arriver, depart, unPlateau, graph);
	    }
	
    } 
    
    /**
     * Resolution of the Hanoi's problem with the recursive way.
     */
    public static void main(String[] args) {
	if (args.length != 1) {
	    System.out.println("usage : Un seul paramètre: le nombre de disque. Le nombre doit être supérieurà 5.");
	    System.exit(0);
	}
	if (Integer.parseInt(args[0]) < 5)
	    System.out.println("usage : Un seul paramètre: le nombre de disque. Le nombre doit être supérieurà 5.");
	else{
	Plateau unPlateau = new Plateau (Integer.parseInt(args[0]));
	DrawPlateau graph = new DrawPlateau (Integer.parseInt(args[0]));
	resolution( Integer.parseInt(args[0]), 0, 2, 1, unPlateau, graph);
	}
    }
	
}

