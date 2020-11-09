<?php

$ROOT = __DIR__; //(dir) bech t7adadli lemplacement mta3 les fichiers eli 3andi quelque soit systeme eli ne5dem bih 
$DS = DIRECTORY_SEPARATOR; //ds t3aweth (/) fi lien 



if(isset($_REQUEST['controller']))
   
    $controller = $_REQUEST['controller'];// controller sta3mlneha fi lien eli fi service angular  bech n3ayet ll page eli 7achti biha selon el donne eli 3andi wdonner tet7at fi west controller['controller']

    switch($controller){
          

               case 'user':
                require("{$ROOT}{$DS}controller{$DS}controllerUser.php");
               break;   


               case 'categorie':
                require("{$ROOT}{$DS}controller{$DS}controllerCategorie.php");
               break;  
               
               
               case 'cours':
                require("{$ROOT}{$DS}controller{$DS}controllerCour.php");
               break;  



               
               case 'quiz':
                require("{$ROOT}{$DS}controller{$DS}controllerQuiz.php");
               break;  


               case 'formation':
                require("{$ROOT}{$DS}controller{$DS}controllerFormation.php");
               break;  

               case 'test':
                require("{$ROOT}{$DS}controller{$DS}controllerTest.php");
               break;  



               case 'question':
                require("{$ROOT}{$DS}controller{$DS}controllerQuestion.php");
               break;  


               case 'option':
                require("{$ROOT}{$DS}controller{$DS}controllerOption.php");
               break;  



               case 'inscrir':
                require("{$ROOT}{$DS}controller{$DS}controllerInscrir.php");
               break;  

               case 'post':
                require("{$ROOT}{$DS}controller{$DS}controllerPost.php");
               break;  



               case 'commentaire':
                require("{$ROOT}{$DS}controller{$DS}controllerCommentaire.php");
               break;  
    }








?>