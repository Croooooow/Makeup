<?php
	
	function get_mysqli()
	{
		require('config.php');
		$db = new mysqli($ServerName,$DBUserName,$DBPassword,$DBName);
		if($db->connect_errno)
		{
			$output = 100;//连接失败返回100
			echo json_decode($output);
			exit;
		}
		$db->query("set character set 'utf8'");//读取数据库返回数据时使用utf8编码
		$db->query("set names 'utf8'");//sql语句使用utf8编码
		return $db;
	}

	function test_result(&$database,$result)
	{
		if($result==false)
		{
			echo json_decode(101);
			$database->close();
			echo 'dashazi';
			exit;
		}
	}
?>