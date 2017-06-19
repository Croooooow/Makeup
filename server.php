<?php
error_reporting(0);
$makeup_scene_user_id = isset($_GET['makeup_scene_user_id'])?trim($_GET['makeup_scene_user_id']):'';
$array = explode(" ",$makeup_scene_user_id);

$makeup_scene = $array[0];
$user_id = $array[1];


//$makeup_scene = isset($_GET['makeup_scene'])?trim($_GET['makeup_scene']):'';
//$user_id = isset($_GET['user_id'])?trim($_GET['user_id']):'';
//$user_id = 1;


if($makeup_scene===''){ 
}
else{

// 创建连接
require('conn.php');
$conn = get_mysqli();
// Check connection
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
} 

$sql = " select  d.*, e.makeup_style_name,e.makeup_style_id from 
rec_makeup_style_heuristic as a 
left join makeup_scene as c on a.makeup_scene_id=c.makeup_scene_id
inner join user as d on a.age_id = d.age_id
inner join makeup_style as e on a.makeup_style_id = e.makeup_style_id
WHERE d.user_id = '$user_id'
and c.makeup_scene_id = ' $makeup_scene '";

$result = $conn->query($sql);

    $select = array();

if ($result->num_rows > 0) {
    
    // 输出数据
    
    while($row = $result->fetch_assoc()) {

        $tmp = array('id' => $row["makeup_style_id"],'title' => $row["makeup_style_name"]);
        array_push($select,$tmp);
        
    }


    

} 
   
  echo json_encode($select); 
}