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

$sql = " select * from user left join age on user.age_id = age.age_id where user.user_id = ' $user_id '";

$result = $conn->query($sql);

    $select = array();


if ($result->num_rows > 0) {
    
    // 输出数据
    $row = $result->fetch_assoc();

        $select = array(
        '0' => ['occupation' => $row["occupation"],'gender' => $row["gender"],
        'age_name' => $row["age_name"],'education' => $row["education"],
        'height' => $row["height"],'weight' => $row["weight"],
        'face' => $row["face"],'eye' => $row["eye"],
        'skin' => $row["skin"],'spot' => $row["spot"],
        ], 
    );

    
        


        
    


    

} 
   
  echo json_encode($select); 
}

 