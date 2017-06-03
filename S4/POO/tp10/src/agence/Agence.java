package agence;
import java.util.NoSuchElementException;
import java.util.List;
import java.util.LinkedList;
import java.util.Iterator;
import java.util.Map;
import java.util.HashMap;
import java.util.Collection;
import agence.*;

/** une agence de location de véhicules, chaque client ne peut louer qu'un véhicule à la foix */
public class Agence {
    // les véhicules de l'agence
    private List<Vehicule> Vehicules;

    // associe les clients et les Vehicules louées (une seule location possible par client)
    private Map<Client,Vehicule> lesLocations;

    public Agence() {
	this.Vehicules = new LinkedList<Vehicule>();
	this.lesLocations = new HashMap<Client,Vehicule>();
    }
    
    /** ajoute la Vehicule v à cette agence
    * @param v le Vehicule ajouté
    */
    public void addVehicule(Vehicule v) {
	this.Vehicules.add(v);
    }

    /** fournit la liste  des véhicules qui satisfont le critère c 
    * @param c le critère de sélection des véhicules
    * @return la liste  des véhicules qui satisfont le critère c 
    */
    public List<Vehicule> selectionne(Critere c) {	
	List<Vehicule> resultat = new LinkedList<Vehicule>();
	Iterator it= this.Vehicules.iterator();
	while(it.hasNext()){
	    Vehicule v= (Vehicule) it.next();
	    if (c.estSatisfaitPar(v)){
		resultat.add(v);
	    }
	}
        return resultat;
    }    

    /** affiche es véhicules qui satisfont le critère c 
    * @param c le critère de sélection des véhicules
    */
    public void afficheSelection(Critere c) {
	List<Vehicule> resultat = new LinkedList<Vehicule>();
	resultat = this.selectionne(c);
	Iterator it= resultat.iterator();
	while(it.hasNext()){
	    Vehicule v= (Vehicule) it.next();
	    System.out.println( v.toString());
	}
    }

    /**  permet à client de louer une voiture 
    * @param client le client locataire
    * @param v le vehicule à louer
    * @return le prix de location du véhicule
    * @exception NoSuchElementException  si le véhicule n'existe pas dans l'agence  
    * @exception IllegalStateException si le véhicule est déjà loué ou que le client loue déjà un autre véhicule
    */
    public float loueVehicule(Client client, Vehicule v) throws NoSuchElementException, IllegalStateException {
	if (this.estLoueur(client) || this.estLoue(v)){
	    throw new IllegalStateException();
	}
	this.lesLocations.put(client,v);
	this.Vehicules.remove(v);
	return v.getPrix();
    }
    
    /** vaut <em>true</em> ssi le client c loue une voiture
    * @return <em>true</em> ssi le client c loue une voiture
    */
    public boolean estLoueur(Client client){   
        return this.lesLocations.containsKey(client);
    }
    
    /** vaut <em>true</em> ssi le véhicule v est loué
    * @return <em>true</em> ssi le véhicule v est loué
    */
    public boolean estLoue(Vehicule v){
        return this.lesLocations.containsValue(v);
    }
    
    /** client rend le véhicule qu'il a loué. Il ne se passe rien si il n'avait pas loué de véhicule. 
    * @param le client qui rend le véhicule
    */
    public void rendVehicule(Client client){
	if (this.estLoueur(client)){
	    this.addVehicule(this.lesLocations.get(client));
	    this.lesLocations.remove(client);
	}
    }
    /** fournit la collection des véhicules de l'agence qui sont  actuellement loués
    * @return la collection des véhicules de l'agence qui sont  actuellement loués
    */
    public Collection<Vehicule> lesVehiculesLouees(){
        return this.lesLocations.values();
    }

}
