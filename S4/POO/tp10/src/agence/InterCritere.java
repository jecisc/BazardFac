package agence;

import agence.critere.*;
import java.util.*;

/**
 * Ferlicot-Delbecque Cyril
 * TP10 -- POO
 * Un "interCritere" est satisfait ssi chacun des critères qui le compose est satisfait
 */
public class InterCritere implements Critere {
    
    private List<Critere> lesCriteres;

    /** initialement ne contient aucun critère */
    public InterCritere() {
        this.lesCriteres = new LinkedList<Critere>();
    }

    /** permeet d'ajouter un critère à cet intercritere
    * @paraam c le critère ajouté
    */
    public void addCritere(Critere c) {
	this.lesCriteres.add(c);
    }

    /** permet de savoir si une liste est vide ou pas
     * return true si la liste est vide, false sinon.
     */
    public boolean isEmpty (){
	return this.lesCriteres.isEmpty();
    }

    /** @see Critere#estSatisfaitPar(Vehicule) */
    public boolean estSatisfaitPar(Vehicule v) {
	Iterator it = this.lesCriteres.iterator();
	while (it.hasNext()){
	    Critere  elem = (Critere) it.next();
	    if(!elem.estSatisfaitPar(v))
		return false;
	}
	return true;
    }
}
