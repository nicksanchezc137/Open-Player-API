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

if( !empty($id)){
    $rv = mysqli_query($conn,"SELECT * FROM `tracks` WHERE id = ".$id);
    //check if the insertion is successful
     $result_obj = new stdClass();
     $message = new stdClass();
    if($rv->num_rows != 0){
          $r = mysqli_fetch_assoc($rv);
          $result_obj->status = "Success";
          $message->track_name = $r["track_name"];
          $message->track_desc = $r["track_desc"];
          $message->id = $r["id"];
          $message->thumbnail_url = $r["thumbnail_url"];
          $message->audio_url = $r["audio_url"];
          $result_obj->message = $message;
          $result_obj->tracks =getTracksByUser($r["user_id"],$conn,0);
           echo json_encode($result_obj);
        
    }else{
     $result_obj->status = "Failed";
    $result_obj->message = "User not found";
     echo json_encode($result_obj);
    }
  
}else{
    $result_obj->status = "Failed";
    $result_obj->message = "Fields Missing";
     echo json_encode($result_obj);
   
}

function getTracksByUser($id,$conn,$offset){
    
     $rv = mysqli_query($conn,"SELECT * FROM `tracks` WHERE user_id = ".$id." order by plays DESC LIMIT ".$offset.",8");
     $result_obj = new stdClass();
     $result_obj->status = "Success";
     $message = new stdClass();
    if($rv->num_rows != 0){
         $tracks = array();
        
      for($x = 0; $x < $rv->num_rows;$x++){
          $r = mysqli_fetch_assoc($rv);
           $track = new stdClass();
           $track->id =  $r["id"];
            $track->track_name =  $r["track_name"];
            $track->track_desc =  $r["track_desc"];
            $track->thumbnail_url =  $r["thumbnail_url"];
            $track->audio_url =  $r["audio_url"];
           array_push($tracks,$track);  
        }
        
        return $tracks;
        
    }
    
    return array();
}




mysqli_close($conn);
?>