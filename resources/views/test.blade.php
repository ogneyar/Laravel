<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
		<head>
				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">

				<title>Laravel</title>

				<!-- Fonts -->
				<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

				<!-- Styles -->
				<style>
					 
				</style>

				<style>
						body {
								font-family: 'Nunito';
						}
				</style>
		</head>
		<body>
	
			<div>Загрузка файла! 
				<input type="file" onchange="upload(this.files[0])">
			</div>
			<br>

			@php			
				//include_once 'testy/testy.php';

				include_once 'conect.php';
				echo $host;
				echo "<br>";
				echo $username;
				echo "<br>";
				echo $password;
				echo "<br>";
				echo $dbname;
				echo "<br>";
			@endphp
			
			<script src="/NodeTest/test.js"></script> 

<script>
function upload(file) {
	let xhr = new XMLHttpRequest();

	// отслеживаем процесс отправки
	xhr.upload.onprogress = function(event) {
		console.log(`Отправлено ${event.loaded} из ${event.total}`);
	};

	// Ждём завершения: неважно, успешного или нет
	xhr.onloadend = function() {
		if (xhr.status == 200) {
			console.log("Успех");
		} else {
			console.log("Ошибка " + this.status);
		}
	console.log(xhr.getResponseHeader('Content-Type'));
	
	};

	//xhr.open("POST", "http://f0430377.xsph.ru/testjs2/");
	xhr.open("POST", "/upload");
	xhr.setRequestHeader('Content-Type', 'multipart/form-data');
	xhr.send(file);
	
}
</script>

		</body>
</html>
