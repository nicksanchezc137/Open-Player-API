<?php
header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");
include ("authentication.php");
include ("datetime.php");


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if (mysqli_connect_errno())
  {
  $result_obj->status = "Failed";
         $result_obj->message = mysqli_connect_error();
         echo json_encode($result_obj); 
         exit;
  }else{
      #echo "successful connection";
  }
# Get JSON as a string
$json_str = file_get_contents('php://input');
#echo $json_str;

# Get as an object
$json_obj = json_decode($json_str,true);

$id =  $json_obj['id'];
$filter = $json_obj["filter"];
$offset = $json_obj["page"];

if( !empty($id)){
    $rv = mysqli_query($conn,"SELECT * FROM `playlists` WHERE tracks != '[]' order by plays DESC LIMIT ".$offset.",2");
     if($filter == "user"){
         $rv = mysqli_query($conn,"SELECT * FROM `playlists` WHERE tracks != '[]' user_id = ".$id." order by plays DESC LIMIT ".$offset.",2");
     }
     
     //var_dump($rv);
    
     $result_obj = new stdClass();
     $result_obj->status = "Success";
     $message = new stdClass();
    if($rv->num_rows != 0){
         $playlists = array();
        
      for($x = 0; $x < $rv->num_rows;$x++){
          $r = mysqli_fetch_assoc($rv);
           $playlist = new stdClass();
           $playlist->id =  $r["id"];
            $playlist->name =  $r["name"];
            $playlist->tracks =  $r["tracks"];
           array_push($playlists,$playlist);  
        }
        $result_obj->status = "Success";
        $result_obj->message = $playlists;
        echo json_encode($result_obj);
        
        
    }else{
     $result_obj->status = "Failed";
    $result_obj->message = "No Playlists found";
     echo json_encode($result_obj);
    }
          
    
  
}else{
    $result_obj->status = "Failed";
    $result_obj->message = "Fields Missing";
     echo json_encode($result_obj);
   
}




mysqli_close($conn);
?>