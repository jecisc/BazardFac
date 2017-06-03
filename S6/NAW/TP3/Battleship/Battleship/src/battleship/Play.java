package battleship;

import battleship.loading.Load;

public class Play {
	
	private static Load loader;
	
	public static void main (String args[])
	{
		loader = new Load("ressources/partie1.xml");
		loader.setPlayers();
		loader.setTurn();
		loader.setBoards();
		int turn = loader.getTurn();
		loader.printBoard(turn % 2);
	}
}
