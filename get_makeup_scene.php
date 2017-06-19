<?php
error_reporting(0);
$user_id = isset($_GET['user_id'])?trim($_GET['user_id']):'';




if($user_id===''){ 
}
else{

// 创建连接
require('conn.php');
$conn = get_mysqli();
// Check connection
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
} 

$sql = " SELECT  c.makeup_scene_id, c.makeup_scene_name
FROM rec_makeup_scene_heuristic as a left JOIN user as b on a.age_id = b.age_id
inner join makeup_scene as c on a.makeup_scene_id = c.makeup_scene_id
WHERE b.user_id = '$user_id'";

$result = $conn->query($sql);

    $select = array();

if ($result->num_rows > 0) {
    
    // 输出数据
    
    while($row = $result->fetch_assoc()) {

        $tmp = array('id' => $row["makeup_scene_id"],'title' => $row["makeup_scene_name"]);
        array_push($select,$tmp);      
    }
} 


   
  echo json_encode($select); 
}