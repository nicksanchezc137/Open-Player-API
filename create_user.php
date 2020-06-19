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

$email =  $json_obj['email'];
$name =  $json_obj['name'];
$fuid =  $json_obj['fuid'];
$type =  $json_obj['type'];

 if(checkIfEmailExists($email,$conn)){
    $result_obj->status = "Failed";
         $result_obj->message = "Email exists";
         echo json_encode($result_obj); 
         exit;  
 }

if( !empty($email) && !empty($name) && !empty($fuid)){ 
    $sql =  "INSERT INTO `users`(`name`,`type`, `email`, `fuid`) VALUES ('".$name."', '".$type."', '".$email."', '".$fuid."')";
    
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

function checkIfEmailExists($email,$conn){
$rv = mysqli_query($conn,"SELECT * FROM `users` where email = '".$email."'");

    if($rv->num_rows != 0){
        return true;
    }else{
        return false;
    }
}

mysqli_close($conn);
?>