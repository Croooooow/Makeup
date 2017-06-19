<?php
  if (!move_uploaded_file($_FILES["file-user-image"]["tmp_name"],"upload/".$_FILES["file-user-image"]["name"]))
  {
	echo "error.";
  }
  $result = exec("C:\\Python27\\python.exe D:\\wamp64\\www\\makeup2\\test.py ".$_FILES["file-user-image"]["name"]);
  $ret = array(
      'ret' => $result,
      'face' => 'dasda',
      'eye' => 'dasda',
      'skin' => 'dasdad',
      'spot' => 'dsadad',
  );
  echo json_encode($ret);