<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
		<head>
				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<meta name="csrf-token" content="{{ csrf_token() }}">
				<title>Laravel</title>

				<!-- Here we add libs for jQuery, Ajax... -->
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script> 

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
				// testy - тесты sql запросов
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
			
			<!-- Вывод ошибок при валидации формы ПОКА НЕ РАБОТАЕТ -->
			@if($errors->any())
				<div>
					<ul>
						@foreach($errors->all() as $error)
						<li>{{ $error }}</li>
						@endforeach
					</ul>
				</div>
			@endif
			
			<!-- Тестовый вывод данных из testController -->
			@if(isset($titles))
				<div>
					<ul>
						@foreach($titles as $title)
						<li>{{ $title }}</li>
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

			<!-- Тест запуска bat файла из браузера -->
			<!-- <script src="/NodeTest/test.js"></script>  -->

<script>
// отправка файла с отслеживанием передачи для показа полосы загрузки
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

	xhr.open("POST", "http://f0430377.xsph.ru/testjs2/");
	//xhr.open("POST", "/upload");
	xhr.setRequestHeader('Content-Type', 'multipart/form-data');
	xhr.send(file);
	
}
</script> 



<!-- 
@php echo json_encode(['csrfToken' => csrf_token()]); @endphp
<script>
// отправка файла с помощью ajax
function upload(file) {	

		var csrf_token = $('meta[name="csrf-token"]').attr('content');

		// var Data = new FormData();
		
		// Data.append('file', file);
		
		// Data.append('test', 'test');
					
		$.ajax ({
			url: '/upload',
			type: 'POST',
			cache: false,
			//data: Data,
			data: {
				'test':'test',
				'_token':csrf_token
			},
			contentType: false,
			processData: false,
			success: function (response) {
				$('#lk').html ("<br><h4>" + response + "</h4><br>");
				$('#lk').show ();						
			},
			error: function(data){
				$('#lk').html ("<br><h4>Ошибка запроса ajax..<br><br>" + data + "</h4><br>");
				$('#lk').show ();
			}			
		});	
}
</script> 

			<div id="lk">  </div>
 -->

		</body>
</html>
