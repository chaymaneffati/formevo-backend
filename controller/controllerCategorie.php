
<?php

    
require_once("{$ROOT}{$DS}model{$DS}modelCategorie.php");

header('Access-Control-Allow-Headers: Access-Control-Allow-Origin, Content-Type');
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json, charset=utf-8');




if(isset($_REQUEST['action']))	
/* recupère l'action passée dans l'URL*/
	$action = $_REQUEST['action'];
/* NB: On a ajouté un comportement par défaut avec action=readAll.*/
	else $action="getall";	
	
switch ($action) {


    case "consulte":
       
       
          $tab_p = ModelCategorie::getAll();
           echo json_encode($tab_p);
             break;



  
    case "createdCategorie":
        $json = file_get_contents('php://input');// ficher bech ynajem ya9rali json

                        $data = json_decode($json);

                      
        
                              $titre = $data->titre;
                              $id = NULL;

            
                $u = new ModelCategorie($titre);	//bech yasna3li objet type model catégorie

                $tab = array(
                    "id" => $id,  
                    
                "titre" =>$titre,
               
                );				
               $res = $u->insert($tab);//fonction mawjouda fi west lmodel 
            
            echo ($res);//traja3 response llfront
        
        break;
  
      
                   
                
              



                

                 

                    case "updated":

                        $json = file_get_contents('php://input');
                        $data = json_decode($json);

                      
        
                              $titre = $data->titre;
                           
                              $id = $_REQUEST["id"];
                               
                            
                              $u = new modelCategorie($titre);	
                                 $tab = array(
                                     "id" => $id,  

                                 "titre" =>$titre,
                               

                                 );				
                               
                                    $o = $u->update($tab, $id);		
                                    echo json_encode($o);                            
                                
                        
                        break;


                        case "detail":
                            if(isset($_REQUEST['id'])){
                            $id = $_REQUEST['id'];
                            $u = modelCategorie::select($id);
                            if($u!=null){
                                echo json_encode($u);
                            }
                            }
                            break;
    

                            case "delete":
                                if(isset($_REQUEST['id'])){
                                    $id = $_REQUEST['id'];                                  
                                    $del= ModelCategorie::delete($id);
                                    echo json_encode($del);
                                
                                }
                                break;
                      
}



 
?>