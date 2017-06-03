package agence;

/** permet de réprésenter les clients des agences de location, leur nom est supposé unique 
    donc deux obkjet Client avec le même nom représente le même client
*/
public class Client {

    private String nom;
    private int age;
    
    /* @param nom le nom du client, supposé unique */
    public Client(String nom, int age) {
        this.nom = nom;
	this.age = age;
    }
    
    /* @return le nom du client (supposé unique) */
    public String getNom() {
        return this.nom;
    }

    public int getAge() {
        return this.age;
    }
    
    // compléter si nécessaire

}
