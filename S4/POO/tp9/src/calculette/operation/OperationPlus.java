package calculette.operation;

import calculette.Operation;

/**
* Ferlicot-Delbecque Cyril
* TP9 -- POO
* Class OperationPlus : Implemente Operation avec l'operation Plus.
*/
public class OperationPlus implements Operation{
    /**
     *@param c1 : premier chiffre de notre operation.
     *@param c2 : deuxième chiffre de notre operation.
     *@return Le résultat de l'operation entre c1 et c2.
     */
    public int calcul(int c1, int c2){
	return (c1 + c2);
    };;
}
