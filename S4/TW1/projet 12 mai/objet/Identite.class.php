<?php
class Identite
{
    // déclaration d'une propriété
    private $nom ;
    private $nombreAbo;
    private $nombreAbomnt;
    private $avatar ;
    
    public function __construct( $nom, $nombreAbo, $nombreAbomnt, $avatar)
          {
		$this->nom = $nom;
		$this->nombreAbo = $nombreAbo;
		$this->nombreAbomnt = $nombreAbomnt;
		$this->avatar = $avatar;
          } 

    // déclaration des méthodes
    public function getNom() {
	return $this->nom;
    }

    public function getNbAb() {
	return $this->nombreAbo;
    }

    public function getNbAbmnt() {
	return $this->nombreAbmnt;
    }

    public function getAvatar() {
	return $this->avatar;
    }
    

}
?>
