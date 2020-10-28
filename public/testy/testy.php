<?php
include_once 'conect.php';
$mysqli = new mysqli($host, $username, $password, $dbname);
if (mysqli_connect_errno()) {	
	echo "<br>Ошибка! Нет подключения к БД.<br>";
}else {	
	
	//$query = "SHOW TABLES";
	//$query = "SELECT * FROM `test_table1` LIMIT 0, 30 ";
	//$query = "INSERT INTO `test_table1` VALUES ('0','0','0','0')";
	//$query = "INSERT INTO `temp` VALUES (0,0,'0','0',0,0)";

	$query = "INSERT INTO `testerbotoff`.`temp` (`ttt`, `ttteeest`, `qqq`, `ww`, `fffff`, `rrrrrrr`) VALUES (12, 21, 'lll', 'mmm', 22, 11);";
	$result = $mysqli->query($query);
	if ($result) {
		//echo "<br>Создал запись в таблице<br>";
		echo "<br>Норм чо<br>";
		dd($result);
		/*if ($result->num_rows>0) {
			$response = $result->fetch_all(MYSQLI_ASSOC);			
			dd($response);
		}else echo "<br>0 записей<br>";*/
		
	}else {		
		echo "<br>Не смог создать запись в таблице<br>";
		dd($result);	
	}
	
	$mysqli->close();	
}
?>
