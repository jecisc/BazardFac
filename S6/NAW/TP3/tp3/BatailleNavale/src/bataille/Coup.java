package bataille;

public class Coup {
	
	public int x;
	public String y;
	public String resultat;
	
	public Coup(int x,String y,String resultat)
	{
		this.x= x;
		this.y = y;
		this.resultat = resultat;
	}
	
	public int getX()
	{
		return this.x;
	}
	
	public String getY(){
		return this.y;
	}
	
	public String getResultat(){
		return this.resultat;
	}
}
