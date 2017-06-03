package calculette;

/**
* Ferlicot-Delbecque Cyril
* TP9 -- POO
* Class Operation : interface permettant de definir les differentes operations de notre calculatrice.
*/
public interface Operation{

    /**
     *@param c1 : premier chiffre de notre operation.
     *@param c2 : deuxième chiffre de notre operation.
     *@return Le résultat de l'operation entre c1 et c2.
     */
    public int calcul(int c1, int c2);

}