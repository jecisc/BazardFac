package naval.direction;

import naval.Position;
import naval.Direction;

/**
* Lesage Yann
*/
public class DirectionSud implements Direction{
    public Position positionSuivante( Position p){
	return new Position (p.getX(), p.getY()-1);
    }
    
}
