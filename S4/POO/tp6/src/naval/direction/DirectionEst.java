package naval.direction;

import naval.Position;
import naval.Direction;

/**
* Lesage Yann
*/
public class DirectionEst implements Direction{
    public Position positionSuivante( Position p){
	return new Position (p.getX()+1, p.getY() );
    }
    
}
