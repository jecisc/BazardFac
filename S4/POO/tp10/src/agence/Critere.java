package agence;

/**
 * Ferlicot-Delbecque Cyril
 * TP10 -- POO
 * Class Critere : interface permettant de definir un critere de choix de vehicule.
 */
public interface Critere{

    /**
     * @param v la voiture dont on teste la conformité au critère
     * @return true si et seulement si la voiture est conforme au
     * critère (on dit que v satisfait le critère)
     */
    public boolean estSatisfaitPar(Vehicule v);

}