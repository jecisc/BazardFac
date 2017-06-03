package bataille;

import java.util.List;

public class Joueur {

	protected String nom;
	
	protected List<Coup> coupsPortes;
	
	protected List<Navire> navires;
	
	public Joueur(String nom){
		this.nom = nom;
	}
	
	public List<Coup> getCoupsPortes() {
		return coupsPortes;
	}
	public void setCoupsPortes(List<Coup> coupsPortes) {
		this.coupsPortes = coupsPortes;
	}
	public List<Navire> getNavires() {
		return navires;
	}
	public void setNavires(List<Navire> navires) {
		this.navires = navires;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getNom(){
		return this.nom;
	}

	public void addCoupPorte(Coup coup) {
		this.coupsPortes.add(coup);
	}
}
