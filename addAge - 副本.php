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
     {$nameErr = "age_Id is required";$insert_bool=0;}
   if (empty($_POST["skin_Id"]))
     {$skin_IdErr = "skin_Id is required";$insert_bool=0;}     
   if (empty($_POST["foundation_RGB_Id"]))
     {$foundation_RGB_IdErr = "foundation_RGB_Id is required";$insert_bool=0;}
  
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





<p><span class="error">* required field.</span></p>
<form action="" method="post"> 
    <select name="age_Id">
    <option value="">选择年龄ID:</option>
    <option value="1">1--13岁以下</option>
    <option value="2">2--14-17岁</option>
    <option value="3">3--18-24岁</option>
    <option value="4">4--25-29岁</option>
    <option value="5">5--30-35岁</option>
    <option value="6">6--36-40岁 </option>
    <option value="6">7--40岁以上 </option>
    </select>
    <span class="error">* <?php echo $age_IdErr;?></span>
    <p></p>

    <select name="skin_Id">
    <option value="">选择肤色ID:</option>
    <option value="1">1--中性</option>
    <option value="2">2--暖色</option>
    <option value="3">3--冷色</option>
    </select>
    <span class="error">* <?php echo $skin_IdErr;?></span>
    <p></p>

        <select name="foundation_RGB_Id">
    <option value="">选择底妆色号ID:</option>
    <option value="1">1--自然色</option>
    <option value="2">2--珍珠色</option>
    <option value="3">3--裸米色</option>
    </select>
    <span class="error">* <?php echo $foundation_RGB_IdErr;?></span>
    <p></p>
    <input type="submit" value="提交">
    </form>










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