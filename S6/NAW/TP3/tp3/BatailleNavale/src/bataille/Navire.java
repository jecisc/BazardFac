package bataille;

import java.util.List;

public class Navire {

	public String nom;
	public List<Position> positions;
	public int etat;
	
	public Navire(String nom){
		this.nom = nom;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public List<Position> getPositions() {
		return positions;
	}
	public void setPositions(List<Position> positions) {
		this.positions = positions;
	}
	
	
}
