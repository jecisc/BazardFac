package calculette.operation;

import calculette.Operation;

/**
* Ferlicot-Delbecque Cyril
* TP9 -- POO
* Class OperationDiv : Implemente Operation avec l'operation Division.
*/
public class OperationDiv implements Operation{
    /**
     *@param c1 : premier chiffre de notre operation.
     *@param c2 : deuxième chiffre de notre operation.
     *@return Le résultat de l'operation entre c1 et c2.
     */
    public int calcul(int c1, int c2){
	if (c2 == 0)
	    return 0;
	else
	    return (c1 / c2);
    };;
}
