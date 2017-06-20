<?php
    error_reporting(0);
    $makeup_style = $_POST['makeup_style'];
   $makeup_style = 1;

    //database operation
    //sleep(2);//干什么的？


    // 创建连接
    require('conn.php');
    $conn = get_mysqli();
    // Check connection
    if ($conn->connect_error) {
        die("连接失败: " . $conn->connect_error);
    } 


    $sql = " SELECT DISTINCT makeup_style_images_path FROM makeup_style_images 
            WHERE  makeup_style_id = '$makeup_style'
            order by rand() limit 3";//随机选取3条

    $result = $conn->query($sql);

    
    $row = $result->fetch_assoc();
    $img1 = $row["makeup_style_images_path"]. '.jpg';

    $row = $result->fetch_assoc();
    $img2 = $row["makeup_style_images_path"]. '.jpg';
    
    $row = $result->fetch_assoc();
    $img3 = $row["makeup_style_images_path"]. '.jpg';

    $select = array(
             'img1' => '../../images/22女神妆/NSZ-002.jpg',
             'img2' => '../../images/22女神妆/NSZ-007.jpg',
            'img3' => '../../images/22女神妆/NSZ-005.jpg',
            'style' => 'style',
            'scene' => 'scene',
            'age' => 'age',
            'shape' => 'shape',
            'color' => 'color',
            'cloth' => 'cloth',
            'hairstyle' => 'hair style',
            'jewelry' => 'jewelry');







    
    echo json_encode($select);