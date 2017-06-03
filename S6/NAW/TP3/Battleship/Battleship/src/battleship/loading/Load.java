package battleship.loading;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Load {
	
	private static final int SIZE = 10;
	protected int turn; 
	protected ArrayList<String> players;
	protected String[][] player1Board;
	protected String[][] player2Board;
	protected Document document;
	
	public Load(String url)
	{
		try 
		{
			this.setFile(url);
		} 
		catch (ParserConfigurationException | SAXException | IOException e) 
		{
			e.printStackTrace();
		}
	}
	
	public void setFile(String url) throws ParserConfigurationException, SAXException, IOException
	{
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		this.document =  db.parse(new File(url));
	}
	
	public void setTurn()
	{
		XPath xPath = XPathFactory.newInstance().newXPath();
		try {
			this.turn = Integer.parseInt(xPath.compile("/*/tour/@id").evaluate(document));
		} 
		catch (NumberFormatException | XPathExpressionException e) 
		{
			e.printStackTrace();
		}
	}
	
	public void setPlayers()
	{
		NodeList players  = document.getElementsByTagName("joueur");
		this.players = new ArrayList<String>(2);
		
		for(int i=0;i<players.getLength();i++)
		{
			Element e = (Element)players.item(i);
			this.players.add(e.getAttribute("nom"));
		}
	}
	
	public void setBoards()
	{
		this.player1Board = new String[SIZE][SIZE];
		this.player2Board = new String[SIZE][SIZE];
		
		for(int i = 0; i < SIZE; i++)
		{
			for(int j =0; j < SIZE; j++)
			{
				player1Board[i][j] = "?";
				player2Board[i][j] = "?";
			}
		}
		
		XPath xPath = XPathFactory.newInstance().newXPath();
		try 
		{
			NodeList player1Bateaux = (NodeList) xPath.compile("/bataille_navale/joueur[@nom = '" + this.players.get(0) + "']/defense/bateau").evaluate(document, XPathConstants.NODESET);
			NodeList player2Bateaux = (NodeList) xPath.compile("/bataille_navale/joueur[@nom = '" + this.players.get(1) + "']/defense/bateau").evaluate(document, XPathConstants.NODESET);
			NodeList player1Mer = (NodeList) xPath.compile("/bataille_navale/joueur[@nom = '" + this.players.get(0) + "']/defense/mer").evaluate(document, XPathConstants.NODESET);
			NodeList player2Mer = (NodeList) xPath.compile("/bataille_navale/joueur[@nom = '" + this.players.get(1) + "']/defense/mer").evaluate(document, XPathConstants.NODESET);
			
			setBoatsCells(player1Bateaux, this.player1Board);
			setBoatsCells(player2Bateaux, this.player2Board);
			setSeasCells(player1Mer, this.player1Board);
			setSeasCells(player2Mer, this.player2Board);
		} 
		catch (XPathExpressionException e) 
		{
			e.printStackTrace();
		}
	}
	
	public void setBoatsCells(NodeList playerNGrid, String[][] playerNBoard)
	{
		for(int i = 0; i < playerNGrid.getLength(); i++)
		{
			NodeList grid = playerNGrid.item(i).getChildNodes();
			
			 for(int j = 0; j < grid.getLength(); j++)
			 {
				 if(grid.item(j).getNodeType() == Node.ELEMENT_NODE)
				 {
					 Element n = (Element)grid.item(j);
					 
					 int y = Integer.parseInt(n.getAttribute("col")) - 1;
					 int x = n.getAttribute("lig").charAt(0)-64;
					 int etat = Integer.parseInt(n.getAttribute("etat"));
					 
					 
						if(etat == 1)
						{
							 playerNBoard[x][y] = "T";
						}
						else
						{
							 playerNBoard[x][y] = "B";
						}
					
				 }
			 }
		}
	}
	
	public void setSeasCells(NodeList playerNGrid, String[][] playerNBoard)
	{
		for(int i = 0; i < playerNGrid.getLength(); i++)
		{
			NodeList grid = playerNGrid.item(i).getChildNodes();
			
			 for(int j = 0; j < grid.getLength(); j++)
			 {
				 if(grid.item(j).getNodeType() == Node.ELEMENT_NODE)
				 {
					 Element n = (Element)grid.item(j);
					 
					 int y = Integer.parseInt(n.getAttribute("col")) - 1;
					 int x = n.getAttribute("lig").charAt(0)-64;
					 int etat = Integer.parseInt(n.getAttribute("etat"));
					 
						if(etat == 1)
						{
							 playerNBoard[x][y] = "X";
						}
				 }
			 }
		}
	}
	
	
	public void printBoard(int player)
	{
		if(player == 0)
		{
			for(int i = 0; i < SIZE; i++)
			{
				for(int j = 0; j < SIZE; j++)
				{
					System.out.print(this.player1Board[i][j]);
				}
				System.out.println();
			}
			
			System.out.println();
			for(int i = 0; i < SIZE; i++)
			{
				for(int j = 0; j < SIZE; j++)
				{
					if(this.player2Board[i][j] == "B")
					{
						System.out.print("?");
					}
					else
					{
						System.out.print(this.player2Board[i][j]);
					}	
				}
				System.out.println();
			}
		}
		else
		{
			for(int i = 0; i < SIZE; i++)
			{
				for(int j = 0; j < SIZE; j++)
				{
					System.out.print(this.player2Board[i][j]);
				}
				System.out.println();
			}
			
			System.out.println();
			for(int i = 0; i < SIZE; i++)
			{
				for(int j = 0; j < SIZE; j++)
				{
					if(this.player1Board[i][j] == "B")
					{
						System.out.print("?");
					}
					else
					{
						System.out.print(this.player1Board[i][j]);
					}
				}
				System.out.println();
			}
			
		}
	}
	
	public int getTurn()
	{
		return this.turn;
	}
	
	public ArrayList<String> getPlayers()
	{
		return this.players;
	}
}
