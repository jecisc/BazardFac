package bataille;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

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

import dom.XMLTOOLS1;

public class Bataille {

	private String path;
	private Document domDocument = null;
	
	private Joueur j1;
	private Joueur j2;
	private String nomGagnant = "";
	
	
	public Bataille(String xmlPath){
		this.path = xmlPath;
	}
	
	public Document createDom() throws SAXException, IOException, ParserConfigurationException{
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();	
		return db.parse(new File(path));
	}
	
	private void play(){
		
		boolean stay = true;
		Scanner sc = new Scanner(System.in);
		String input = sc.nextLine();
		boolean j1Begins = false;
		if((j1.getCoupsPortes().size() < j2.getCoupsPortes().size()) || (j1.getCoupsPortes().size() == j2.getCoupsPortes().size() ) )
			j1Begins = true;
		if(input.equals("y")){
			stay = false;
			sc.close();
			registerDocument();
		}
		while(stay){
			if(getWinnerName().equals("")){
				if(j1Begins == true){
					System.out.println("Tour du joueur 1 : ");
					System.out.println("Entrez la coordonnée d'attaque (ex : B5) : ");
					String coord = sc.nextLine();
					resolveCoordinates(Character.toString(coord.charAt(0)), Character.getNumericValue(coord.charAt(1)),1);
					System.out.println("Sauvegarder et Quitter ? (y/n)");
					j1Begins = false;
				}
				else
				{
					System.out.println("Tour du joueur 2 : ");
					System.out.println("Entrez la coordonnée d'attaque (ex : B5) : ");
					String coord = sc.nextLine();
					resolveCoordinates(Character.toString(coord.charAt(0)),Character.getNumericValue(coord.charAt(1)),2);
					System.out.println("Sauvegarder et Quitter ? (y/n)");
					j1Begins = true;
				}
				input = sc.nextLine();
				if(input.equals("y")){
					stay = false;
					sc.close();
					registerDocument();
				}
			}else{
				System.out.println("La partie a été remporté par : "+getWinnerName());
			}
		}
	}
	
	private void registerDocument() {
		System.out.println("Enregistrement des données ...");
		try{
				DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
		 
				// element pere
				Document doc = docBuilder.newDocument();
				Element batailleNavale = doc.createElement("bataillenavale");
				doc.appendChild(batailleNavale);
		 
				// elements joueurs
				Element joueur1 = doc.createElement("joueur1");
				batailleNavale.appendChild(joueur1);
				
				Element joueur2 = doc.createElement("joueur2");
				batailleNavale.appendChild(joueur2);
				
				Element gagnant = doc.createElement("gagnant");
				batailleNavale.appendChild(gagnant);
		 
				// attributs des joueurs -- faire staff.setAttribute("id", "1");
				joueur1.setAttribute("nom", j1.getNom());
				joueur2.setAttribute("nom", j2.getNom());
				gagnant.setAttribute("nom", nomGagnant);
				

				//  elements du joueur 1 
				Element coupsportesJ1 = doc.createElement("coupsportes");
				for(Coup c : j1.getCoupsPortes()){
					Element coup = doc.createElement("coup");
					coup.setAttribute("resultat", c.getResultat());
					coup.setAttribute("x", String.valueOf(c.getX()));
					coup.setAttribute("y", c.getY());
					coupsportesJ1.appendChild(coup);
				}
				joueur1.appendChild(coupsportesJ1);
		 
				Element flotteJ1 = doc.createElement("flotte");
				for(Navire n : j1.getNavires()){
					Element navire = doc.createElement("bateau");
					navire.setAttribute("nom", n.getNom());
					for(Position p : n.getPositions()){
						Element position = doc.createElement("position");
						position.setAttribute("x", String.valueOf(p.getX()));
						position.setAttribute("y", p.getY());
						navire.appendChild(position);
					}
					flotteJ1.appendChild(navire);
				}
				joueur1.appendChild(flotteJ1);

				//  elements du joueur 2
				Element coupsportesJ2 = doc.createElement("coupsportes");
				for(Coup c : j2.getCoupsPortes()){
					Element coup = doc.createElement("coup");
					coup.setAttribute("resultat", c.getResultat());
					coup.setAttribute("x", String.valueOf(c.getX()));
					coup.setAttribute("y", c.getY());
					coupsportesJ2.appendChild(coup);
				}
				joueur2.appendChild(coupsportesJ2);
		 
				Element flotteJ2 = doc.createElement("flotte");
				for(Navire n : j2.getNavires()){
					Element navire = doc.createElement("bateau");
					navire.setAttribute("nom", n.getNom());
					for(Position p : n.getPositions()){
						Element position = doc.createElement("position");
						position.setAttribute("x", String.valueOf(p.getX()));
						position.setAttribute("y", p.getY());
						navire.appendChild(position);
					}
					flotteJ2.appendChild(navire);
				}
				joueur2.appendChild(flotteJ2);
				
				XMLTOOLS1.ecrireXML(doc, "bataillenavaleXML.xml", "bataillenavaleDTD.dtd");
				
		}catch(Exception e){
			e.printStackTrace();
		}
				

		System.out.println("Enregistrement terminé.Fin du programme.");
	}

	public void run(){
		System.out.println("Lancement du programme");
		try{
			domDocument = createDom();
			j1 = createPlayer(1);
			System.out.println("Joueur 1 : "+j1.getNom()+"\n");
			System.out.println("Navires du joueur 1 :  \n");
			for(Navire n : j1.getNavires()){
				System.out.println(n.getNom());
				for(Position pos : n.getPositions())
					System.out.println("X : "+pos.getX()+" -  Y : "+pos.getY());
			}
			System.out.println("\nCoups Portés par le joueur 1 : ");
			for(Coup c : j1.getCoupsPortes())
				System.out.println("X : "+c.getX()+" -  Y : "+c.getY()+" - RESULTAT : "+c.getResultat());
			
			j2 = createPlayer(2);
			System.out.println("Joueur 2 : "+j2.getNom());
			System.out.println("Navires du joueur 2 :  \n");
			for(Navire n : j2.getNavires()){
				System.out.println(n.getNom());
				for(Position pos : n.getPositions())
					System.out.println("X : "+pos.getX()+" -  Y : "+pos.getY());
			}
			System.out.println("\nCoups Portés par le joueur 2 : ");
			for(Coup c : j2.getCoupsPortes())
				System.out.println("X : "+c.getX()+" -  Y : "+c.getY()+" - RESULTAT : "+c.getResultat());
			
			
			System.out.println("\n\n Sauvegarder et Quitter ? (y/n)");
			
			
			play();
			
			
		}
		catch(Exception e){
			System.out.println("Une exception s'est produite : "+e.getMessage());
		}
	}

	private Joueur createPlayer(int id) throws XPathExpressionException {
		XPath xPath = XPathFactory.newInstance().newXPath();
		Node node = (Node)xPath.evaluate("/bataillenavale/joueur"+id,domDocument.getDocumentElement(), XPathConstants.NODE);
		Joueur tmpJoueur = new Joueur(((Element) node).getAttribute("nom"));
		tmpJoueur.setNavires(getNavires(id));
		tmpJoueur.setCoupsPortes(getCoups(id));
		return tmpJoueur;
	}
	
	private String getWinnerName(){
		if(nomGagnant.equals("")){
			XPath xPath = XPathFactory.newInstance().newXPath();
			Node node = null;
			try {
				node = (Node)xPath.evaluate("/bataillenavale/gagnant",domDocument.getDocumentElement(), XPathConstants.NODE);
			} catch (XPathExpressionException e) {
				e.printStackTrace();
			}
			return(((Element) node).getAttribute("nom"));
		}
		else
			return nomGagnant;
	}
	
	private List<Navire> getNavires(int joueur) throws XPathExpressionException{
		XPath xPath = XPathFactory.newInstance().newXPath();
		NodeList listeBateaux = (NodeList)xPath.evaluate("/bataillenavale/joueur"+joueur+"/flotte/bateau",domDocument.getDocumentElement(), XPathConstants.NODESET);
		List<Navire> navires = new ArrayList<Navire>();
		for (int i = 0; i < listeBateaux.getLength(); ++i) {
		    Element e = (Element) listeBateaux.item(i);
		    Navire tmpNavire = new Navire(e.getAttribute("nom"));
		    tmpNavire.setPositions(getPositions(e));
		    navires.add(tmpNavire);
		}
		return navires;
	}
	
	private List<Position> getPositions(Node bateau) throws XPathExpressionException{
		XPath xPath = XPathFactory.newInstance().newXPath();
		NodeList listePositionBateaux = (NodeList)xPath.evaluate("position",bateau, XPathConstants.NODESET);
		List<Position> positionsNavire = new ArrayList<Position>();
		for (int i = 0; i < listePositionBateaux.getLength(); ++i) {
		    Element e = (Element) listePositionBateaux.item(i);
		    Position tmpPos = new Position(Integer.parseInt(e.getAttribute("x")),e.getAttribute("y"));
		    positionsNavire.add(tmpPos);
		}
		return positionsNavire;
	}
	
	private List<Coup> getCoups(int joueur) throws XPathExpressionException{
		XPath xPath = XPathFactory.newInstance().newXPath();
		NodeList listeCoups = (NodeList)xPath.evaluate("/bataillenavale/joueur"+joueur+"/coupsportes/coup",domDocument.getDocumentElement(), XPathConstants.NODESET);
		List<Coup> coups = new ArrayList<Coup>();
		for (int i = 0; i < listeCoups.getLength(); ++i) {
		    Element e = (Element) listeCoups.item(i);
		    coups.add(new Coup(Integer.parseInt(e.getAttribute("x")),e.getAttribute("y"),e.getAttribute("resultat")));
		}
		return coups;
	}
	
	private void resolveCoordinates(String y, int x, int currentPlayer){
		String result = "";
		boolean touch = false;
		Navire currentNav = null;
		if(currentPlayer == 1){
			for(Navire n : j2.getNavires()){
				for(Position p : n.getPositions()){
					if(p.getX() == x && p.getY().equals(y)){
						touch = true;
						System.out.println(touch);
					}
				}
				if(touch == true){
					currentNav = n;
					touch = false;
				}
			}
			if(!currentNav.equals(null)){
				result = "touche";
				System.out.println("Touché ! ");
				result = "touche";
				if(estIlCoule(currentNav, j1)){
					System.out.println("Navire Coulé !");
					result="coule";
				}
			}
			else
			{
				System.out.println("Dans l'eau ..");
				result = "eau";
			}
			j1.addCoupPorte(new Coup(x, y, result));
			if(toutLesNaviresSontIlsCoules(j2, j1)){
				System.out.println("Le joueur "+j1.getNom()+" a coulé tout les navires de "+j2.getNom()+".Il a remporté la partie.");
				nomGagnant = j1.getNom();
			}
		}
		else
		{
			for(Navire n : j1.getNavires()){
				for(Position p : n.getPositions()){
					if(p.getX() == x && p.getY().equals(y)){
						touch = true;
						System.out.println(touch);
					}
				}
				if(touch == true){
					currentNav = n;
					touch = false;
				}
			}
			if(!currentNav.equals(null)){
				result = "touche";
				System.out.println("Touché ! ");
				result = "touche";
				if(estIlCoule(currentNav, j2)){
					System.out.println("Navire Coulé !");
					result="coule";
				}
			}
			else
			{
				System.out.println("Dans l'eau ..");
				result = "eau";
			}
			j2.addCoupPorte(new Coup(x, y, result));
			if(toutLesNaviresSontIlsCoules(j1, j2)){
				System.out.println("Le joueur "+j2.getNom()+" a coulé tout les navires de "+j1.getNom()+".Il a remporté la partie.");
				nomGagnant = j2.getNom();
			}
		}
	}

	private boolean estIlCoule(Navire n,Joueur attaquant){
		int lengthPosition = n.getPositions().size();
		int actualLength = 0;
		for(Position p : n.getPositions()){
			for(Coup c : attaquant.getCoupsPortes()){
				if(c.getX() == p.getX() && c.getY().equals(p.getY())){
					actualLength ++;
				}
			}
		}
		if(actualLength == lengthPosition)
			return true;
		else
			return false;
	}
	
	private boolean toutLesNaviresSontIlsCoules(Joueur cible,Joueur attaquant){
		int naviresCoules = 0;
		int nombreNavires = cible.getNavires().size();
		for(Navire n : cible.getNavires()){
			if(estIlCoule(n, attaquant))
				naviresCoules ++ ;
		}
		if(naviresCoules == nombreNavires)
			return true;
		else
			return false;
	}
}
