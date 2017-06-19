<?php
  if (!move_uploaded_file($_FILES["file-user-image"]["tmp_name"],"upload/".$_FILES["file-user-image"]["name"]))
  {
	echo "error.";
  }
  sleep(2);
  $result = exec("C:\\Python27\\python.exe D:\\wamp64\\www\\makeup2\\test.py ".$_FILES["file-user-image"]["name"]);
  $ret = array(
      'ret' => $result,
      'face' => '椭圆脸',
      'eye' => '标准眼型',
      'skin' => '偏黄',
      'spot' => '无',
  );
  echo json_encode($ret);