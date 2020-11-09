<?php


require_once("./config/conf.php");

class Model {

    private static $pdo;

    public static function Init(){

        $host = Conf::getHostname();
        $dbname = Conf::getDatabase();
        $login = Conf::getLogin();
        $pass = Conf::getPassword();

        try {
            self::$pdo = new PDO("mysql:host=$host;dbname=$dbname", $login,$pass);

        } catch (PDOException $e) {
            die($e->getMessage());
        }


    }


	public static function getAll(){
	    $SQL="SELECT * FROM ". static::$table; // ta7thir req

		$rep = model::$pdo->query($SQL); //5adem req 
	  
	    return $rep->fetchAll();// fetchall traja3li les donnée fi tableau mnathem 
	}



	public static function getAllFormatteur(){
	    $SQL="SELECT * FROM ".static::$table." WHERE Role='prof'";
		$rep = model::$pdo->query($SQL);
	  //  $rep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    return $rep->fetchAll();
	}

	public static function getFour(){
	    $SQL="SELECT * FROM ".static::$table." WHERE Role='prof' LIMIT 4";// bech tjibli 4 profet 
		$rep = model::$pdo->query($SQL);
	  //  $rep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    return $rep->fetchAll();
	}

	public static function getThree(){
	    $SQL="SELECT * FROM ".static::$table." LIMIT 3";
		$rep = model::$pdo->query($SQL);
	  //  $rep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    return $rep->fetchAll();
	}


	public static function getAllEtudiant(){
	    $SQL="SELECT * FROM ".static::$table." WHERE Role='etudiant'";
		$rep = model::$pdo->query($SQL);
	  //  $rep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    return $rep->fetchAll();
	}


	public static function getById($id){ // bech tjibli barcha donné eli 3andhom nafes id kima commentaire 
	    $SQL="SELECT * FROM ".static::$table." WHERE id=".$id;
		$rep = model::$pdo->query($SQL);
	  //  $rep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    return $rep->fetchAll();
	}



    public function select($cle_primaire) {
	    $sql = "SELECT * from ".static::$table." WHERE ".static::$primary."=:cle_primaire"; //text req 
	    $req_prep = model::$pdo->prepare($sql); // preparation req
	    $req_prep->bindParam(":cle_primaire", $cle_primaire); //bech n7ot valeur ll clé primer
	    $req_prep->execute();
	    if ($req_prep->rowCount()==0){
			return null;
			
	  	}else{
			$rslt = $req_prep->fetch(); // bech yraja3li id we7d 
			return $rslt;
		}
	      
	  }



	  public function existe($e) {
	    $sql = "SELECT * from ".static::$table." WHERE email=:em";
	    $req_prep = model::$pdo->prepare($sql);
	    $req_prep->bindParam(":em", $e);
	    $req_prep->execute();
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep->fetch();
			return $rslt;
		}
	      
	  }
	  
	  public function selecter($cle_primaire) {
	    $sql = "SELECT * from ".static::$table." WHERE  formation =:cle_primaire";
	    $req_prep = model::$pdo->prepare($sql);
	    $req_prep->bindParam(":cle_primaire", $cle_primaire);
	    $req_prep->execute();
	  //  $req_prep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep->fetchAll();
			return $rslt;
		}
	      
  	}
	  

	  	  
	  public function getByCat($cle_primaire) {
	    $sql = "SELECT * from ".static::$table." WHERE  categorie =:cle_primaire";
	    $req_prep = model::$pdo->prepare($sql);
	    $req_prep->bindParam(":cle_primaire", $cle_primaire);
	    $req_prep->execute();
	  //  $req_prep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep->fetchAll();
			return $rslt;
		}
	      
  	}


	  public function getter($cle_primaire) {
	    $sql = "SELECT * from ".static::$table." WHERE  quiz =:cle_primaire";
	    $req_prep = model::$pdo->prepare($sql);
	    $req_prep->bindParam(":cle_primaire", $cle_primaire);
	    $req_prep->execute();
	  //  $req_prep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep->fetchAll();
			return $rslt;
		}
	      
	  }
	  



	 public function getUserFormation($cle_primaire){

		$sql = "SELECT formation.*
				FROM formation
				JOIN inscrir
				ON formation.id=inscrir.formation AND inscrir.user =:cle_primaire"; // jointure bin table formaation wuser el howa table inscrir bech yjib les formations eli met3al9in bel id mta3 luser
	    $req_prep = model::$pdo->prepare($sql);
	    $req_prep->bindParam(":cle_primaire", $cle_primaire);
	    $req_prep->execute();
	  //  $req_prep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep->fetchAll();
			return $rslt;
		}
	      


	 }








	  public function getterTest($cle_primaire) {
	    $sql = "SELECT * from ".static::$table." WHERE  test =:cle_primaire";
	    $req_prep = model::$pdo->prepare($sql);
	    $req_prep->bindParam(":cle_primaire", $cle_primaire);
	    $req_prep->execute();
	  //  $req_prep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep->fetchAll();
			return $rslt;
		}
	      
	  }

	  public function login($username, $password) {
	    $sql = "SELECT * from ".static::$table." WHERE ".static::$user."=:username AND ".static::$pass."=:password";
	    $req_prep = model::$pdo->prepare($sql);
		$req_prep->bindParam(":username", $username);
	    $req_prep->bindParam(":password", $password);
		
	    $req_prep->execute();
	  //  $req_prep->setFetchMode(PDO::FETCH_CLASS, 'model'.ucfirst(static::$table));
	    if ($req_prep->rowCount()==0){
			return null;
			die();
	  	}else{
			$rslt = $req_prep;
			return $rslt;
		}
	      
  	}


	public function delete($cle_primaire) {
		$sql = "DELETE FROM ".static::$table." WHERE ".static::$primary."=:cle_primaire";
		$req_prep = model::$pdo->prepare($sql);
		$req_prep->bindParam(":cle_primaire", $cle_primaire);
		$req_prep->execute();
	}




	public function enable($cle_primaire , $enable){

		$sql = "UPDATE `user` SET `enable`= $enable  WHERE ".static::$primary."=:cle_primaire";  
				 $req_prep = model::$pdo->prepare($sql);
				$req_prep->bindParam(":cle_primaire", $cle_primaire);
					$req_prep->execute();
 }  




	public function update($tab, $cle_primaire) {
		$sql = "UPDATE ".static::$table." SET";
		foreach ($tab as $cle => $valeur){
			$sql .=" ".$cle."=:new".$cle.",";
		}
		$sql=rtrim($sql,",");
		$sql.=" WHERE ".static::$primary."=:oldid;";
		
		  $req_prep = model::$pdo->prepare($sql);
		  $values = array();
	  
	  foreach ($tab as $cle => $valeur){
				$values[":new".$cle] = $valeur;
		  }

		  $values[":oldid"] = $cle_primaire;
		  $req_prep->execute($values);
		  $obj = model::select($tab[static::$primary]);
		  return $obj;
  }

  public function insert($tab){

    $sql = "INSERT INTO ".static::$table." VALUES(";
    foreach ($tab as $cle => $valeur){
		$sql .=" :".$cle.",";
	}
	$sql=rtrim($sql,",");
	$sql.=");";


	
    $req_prep = model::$pdo->prepare($sql);
    $values = array();
    foreach ($tab as $cle => $valeur)
      		$values[":".$cle] = $valeur;
	return $req_prep->execute($values);
	
  }
}

Model::Init();

?>