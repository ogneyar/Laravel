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
			-------------------------------------------------
			<br><br>

			@php			
				//include_once 'testy/testy.php';
				/*
				include_once 'conect.php';
				echo "host : ".$host;
				echo "<br>";
				echo "user : ".$username;
				echo "<br>";
				echo "pass : ".$password;
				echo "<br>";
				echo "db : ".$dbname;
				echo "<br>";
				*/
			@endphp

			@if($errors->any())
				<div>
					<ul>
						@foreach($errors->all() as $error)
						<li>{{ $error }}</li>
						@endforeach
					</ul>
				</div>
			@endif

			<form action="{{ route('test-form-post') }}" method="post">
				@csrf
				<input type="text" name="name"><br>
				<input type="text" name="mail"><br>
				<input type="text" name="text">
				<button type="submit">Нажми меня</button>
			</form>



			
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
