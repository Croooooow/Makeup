<html>
<body>

搜索条件 age_id = <?php echo $_POST["age_Id"]; ?>!<br>

<?php
//得到post传输过来的age_Id
error_reporting(0);
$age_Id = isset($_POST['age_Id'])?trim($_POST['age_Id']):'';
if(age_Id==='')
{
    echo json_encode(2);
    exit;
}

// 创建连接
require('conn.php');
$conn = get_mysqli();
// Check connection
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
} 
 
$sql = "SELECT age_Id, skin_Id,foundation_RGB_Id 
FROM foundation_rgb_rmm_heuristic where age_Id = '$age_Id'";

$result = $conn->query($sql);
 
if ($result->num_rows > 0) {
    // 输出数据
    while($row = $result->fetch_assoc()) {
        //echo "age_Id: " . $row["age_Id"]. " & age_Name: " . $row["age_Name"]. "<br>";
        /*
        $data['age_Id'] = $age_Id;
        $data['age_Name'] = $age_Name;
        echo json_encode($data);
        */
        $data[] = $row;// all results 
    }
} else {
    echo "0 结果";
}

//just for displaying
echo "一共". count($data). "结果". "<br>";
echo json_encode($data);

$result->free();
$conn->close();
?>

</body>
</html>