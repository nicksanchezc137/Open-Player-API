<?php
header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");
include ("authentication.php");
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }else{
      #echo "successful connection";
  }
# Get JSON as a string
$json_str = file_get_contents('php://input');
#echo $json_str;

# Get as an object
$json_obj = json_decode($json_str,true);


$offset = $json_obj['offset'];

if( !is_null($offset)){
    $rv = mysqli_query($conn,"SELECT * FROM `tracks` order by plays DESC LIMIT ".$offset.",8");
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
        $message->tracks = $tracks;
        $result_obj->message = $message;
        echo json_encode($result_obj);
        
    }else{
    $result_obj->status = "Failed";
    $result_obj->message = "No More Tracks";
    echo json_encode($result_obj);
    }
  
}else{
    $result_obj->status = "Failed";
    $result_obj->message = "Fields Missing";
     echo json_encode($result_obj);
   
}

mysqli_close($conn);
?>