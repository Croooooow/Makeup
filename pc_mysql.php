<?php
error_reporting(0);
$q = isset($_GET["q"])?intval($_GET["q"]) : '';

 if(empty($q)) {
    echo '请选择一个网站';
    exit;
}
// 创建连接
require('conn.php');
$conn = get_mysqli();
// Check connection
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
} 



$sql1 = "SELECT a.*,b.* FROM age as a left join user as b 
        on a.age_Id = b.age_Id 
        WHERE b.user_Id = '1'";

$result1 = mysqli_query($conn,$sql1);
$row1 = mysqli_fetch_array($result1);

$aaa = "宴会化妆";

/*查询语句： 查询化妆场景*/


echo "<tr>
    <td><center>
    <div class =text-font id='txtHint'>
    <table  border='0' width='100%'>
        <tr>
            <th>";
echo "您的身份: ". $row1['occupation']. ";";
echo $row1['gender']. ";";
echo $row1['age_Name']. ";";
echo $row1['education']. ";";
echo $row1['height']. "cm;";
echo $row1['weight']. "kg;"; 

echo "</th>
        </tr>
        <tr>
            <th>";
            
echo "您其他的: ". $row1['face']. ";";
echo $row1['eye']. ";";          
echo $row1['skin']. ";";        
echo $row1['spot']. ";";       
 



if(empty($q)) {
    echo '请选择一个妆容场景';
    exit;
}
 
mysqli_close($conn);
?>