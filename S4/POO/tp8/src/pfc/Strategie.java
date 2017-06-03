package pfc;

/**
* Ferlicot-Delbecque Cyril
* TP8 -- POO
* Class Strategie : interface of Strategie.
*/
public interface Strategie{
    /**
     *@return the next 'Coup' use in the Strategie.
     */
    public Pfc getCoup();
    public String toString();
}