<!DOCTYPE HTML> 
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body> 



<?php
error_reporting(0);

$age_Id = isset($_POST['age_Id'])? htmlspecialchars($_POST['age_Id']) : '';
$skin_Id = isset($_POST['skin_Id'])? htmlspecialchars($_POST['skin_Id']) : '';
$foundation_RGB_Id = isset($_POST['foundation_RGB_Id'])? htmlspecialchars($_POST['foundation_RGB_Id']) : '';
$insert_bool = 1;

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
   if (($_POST["age_Id"])==="")
     {
     $nameErr = "age_Id is required";
     $insert_bool=0;
     echo "Error: age_Id is empty";
     exit(0);
     }
   if (empty($_POST["skin_Id"]))
     {$skin_IdErr = "skin_Id is required";$insert_bool=0;    
     echo "Error: skin_Id is empty";
     exit(0);}     
   if (empty($_POST["foundation_RGB_Id"]))
     {$foundation_RGB_IdErr = "foundation_RGB_Id is required";$insert_bool=0;
     echo "Error: foundation_RGB_Id is empty";
     exit(0);
     
     }
  
}

if($insert_bool === 1){
// 创建连接
require('conn.php');
$conn = get_mysqli();
// Check connection
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
} 
//insert 
$sql="INSERT INTO foundation_RGB_rmm_heuristic (age_Id, skin_Id, foundation_RGB_Id)
VALUES
('$age_Id','$skin_Id','$foundation_RGB_Id')";

if (mysqli_query($conn, $sql)) {
    echo "新记录插入成功";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}

?>



<?php
echo "<h2>Your Input:</h2>";
echo $age_Id;
echo "<br>";
echo $skin_Id;
echo "<br>";
echo $foundation_RGB_Id;
echo "<br>";
?>




</body>
</html>