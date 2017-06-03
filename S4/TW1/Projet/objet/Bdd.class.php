<?php
class Bdd
{
    // déclaration d'une propriété
    private $connexion;

    public function __construct()
	{    
	try {
		$this->connexion = new PDO("pgsql:host=localhost;dbname=lesagey", lesagey, tzr26uv);
	}catch (PDOException $e){
	echo "erreur connexion" . $e->getMessage() ;
	exit();
	}
    }

    public function getMessage($start, $offset, $auteur ="*"){
        $stmt= $this->connexion ->prepare(
		"SELECT author,content,date FROM message WHERE nom=:name ORDER BY ID DESC LIMIT debut=:start , fin=:end");
	$stmt->execute(array(':name'=>$auteur, ':start' => $start,':end' => $offset ));
	return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    public function getNbabonne($id){
	return 0;
    }

    public function getNbabo($id){
	return 1;
   }

    public function getAvatar( $id){
	return "";
    }
    
    public function getMdp( $id){
	$stmt = $this->connexion->prepare(
		"SELECT mdp FROM users WHERE nom= :name");
	$stmt->bindValue(':name', $id, PDO::PARAM_STR);
	$stmt->execute();
	return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>
