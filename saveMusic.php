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

$track_name =  $json_obj['track_name'];
$user_id =  $json_obj['user_id'];
$thumbnail_url =  $json_obj['thumbnail_url'];
$track_desc =  $json_obj['track_desc'];
$audio_url = $json_obj['audio_url'];




if( !empty($user_id)){ 
    $sql =  "INSERT INTO `tracks`(`track_name`,`user_id`,`thumbnail_url`, `track_desc`, `audio_url`) VALUES ('".$track_name."', ".$user_id.", '".$thumbnail_url."', '".$track_desc."', '".$audio_url."')";
    
    //var_dump($sql);
    
    if ($conn->query($sql) === TRUE) {
        $last_id = $conn->insert_id;
        $result_obj->status = "Success";
        $result_obj->message = $last_id;
        echo json_encode($result_obj);
    
    }else{
      $result_obj->status = "Failed";
         $result_obj->message = "An error has occurred";
        echo json_encode($result_obj);  
    }
  
    
}else{
    $result_obj->status = "Failed";
    $result_obj->message = "Missing some fields";
     echo json_encode($result_obj);
}



mysqli_close($conn);
?>