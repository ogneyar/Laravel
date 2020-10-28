<?php
include_once 'conect.php';
$mysqli = new mysqli($host, $username, $password, $dbname);
if (mysqli_connect_errno()) {	
	echo "<br>Ошибка! Нет подключения к БД.<br>";
}else {	
	//$query = "INSERT INTO `testerbotoff`.`temp` (`ttt`, `ttteeest`, `qqq`, `ww`, `fffff`, `rrrrrrr`) VALUES (\'1\', \'1\', \'mmm\', \'mmm\', \'1\', \'1\');";
	//$query = "SHOW TABLES";
	$query = "SELECT * FROM `temp` LIMIT 0, 30 ";
	$result = $mysqli->query($query);
	if ($result) {
		//echo "<br>Создал запись в таблице<br>";
		echo "<br>Норм чо<br>";
		
		if ($result->num_rows>0) {					
			$response = $result->fetch_all(MYSQLI_ASSOC);			
			dd($response);
		}else echo "<br>0 записей<br>";
		
	}else {		
		echo "<br>Не смог создать запись в таблице<br>";
		dd($result);	
	}
	
	$mysqli->close();	
}
?>
