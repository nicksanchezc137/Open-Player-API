<?php
header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");
include ("authentication.php");

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
 $result_obj = new stdClass();
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



if(!empty($id)){ 
    $rv = mysqli_query($conn,"SELECT * FROM `playlists` where id = ".$id);

    if($rv->num_rows != 0){
      //get the number of plays
     
       $r = mysqli_fetch_assoc($rv);
      $current_plays = $r["plays"] +1;
       $sql =  "UPDATE `playlists` SET `plays`=".$current_plays." WHERE id = ".$id;
    
    if ($conn->query($sql) === TRUE) {
        $last_id = $conn->insert_id;
        $result_obj->status = "Success";
        $result_obj->message = "Play Registered";
        echo json_encode($result_obj);
    
    }else{
      $result_obj->status = "Failed";
         $result_obj->message = "An error has occurred";
        echo json_encode($result_obj);  
    }
      
    }else{
        $result_obj->status = "Failed";
    $result_obj->message = "No record found";
     echo json_encode($result_obj); 
    }
   
  
    
}else{
    $result_obj->status = "Failed";
    $result_obj->message = "Missing some fields";
     echo json_encode($result_obj);
}



mysqli_close($conn);
?>