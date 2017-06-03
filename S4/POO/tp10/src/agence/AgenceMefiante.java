package agence;
import java.util.NoSuchElementException;
import java.util.List;
import java.util.LinkedList;
import java.util.Iterator;

/** 
 * Lesage Yann
 * TP10 -- POO
 * Class AgenceMefiante : agence avec surcout pour les moins de 25ans. Etend la classe Agence.
 */
public class AgenceMefiante extends Agence{

    public AgenceMefiante (){
	super();
    }

    public float loueVehicule(Client client, Vehicule v) throws NoSuchElementException, IllegalStateException {
	float prix= super.loueVehicule(client, v);
	if (client.getAge() <25){
	    prix = prix* 1.1F;
	}
	return prix;
    }


   /** affiche es véhicules qui satisfont le critère c 
    * @param c le critère de sélection des véhicules
    */
    public void afficheSelection(Critere c, Client client) {
	List<Vehicule> resultat = new LinkedList<Vehicule>();
	resultat = this.selectionne(c);
	Iterator it= resultat.iterator();
	while(it.hasNext()){
	    Vehicule v= (Vehicule) it.next();
	    if (client.getAge() <25){
		System.out.println( v.toString() + " malus d'age : +"+ (v.getPrix()*0.1F) );
	    }else {
		System.out.println( v.toString() );
	    }
	}
    }    

}

