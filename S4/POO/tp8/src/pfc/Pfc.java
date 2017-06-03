package pfc;

public enum Pfc{
    PIERRE,FEUILLE, CISEAU;
    

    /**
     *compare two enum pfc
     *@return 1 if this win to o, 0 if they are equals, -1 if this lose to o
     */
    public int comparer(Pfc o){
	if (this == o){
	    return 0;
	} else if ((this.ordinal() - o.ordinal())%3 ==1){
	    return 1;
	}else {
	    return -1;
	}
    }

    /**
     *@return "Feuille", "Pierre" or "Ciseau" 
     */
    public String toString(){
	switch(this) {
	case PIERRE : return "Pierre";
	case FEUILLE : return "Feuille";
	case CISEAU : return "Ciseau";
	default: throw new IllegalArgumentException();
	}
    }
}
