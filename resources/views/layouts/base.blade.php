<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title')</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
				
        <!-- Styles -->
		<link href="/css/app.css" rel="stylesheet">
		
        <style>
            body {
                font-family: 'Nunito';
            }
        </style>
    </head>
	<body>
		@include('includes.header')
		
		@if(Request::is('/'))
			@include('includes.hero')
		@endif
		
		<div class="container">
			<div class="row">
				<div class="col">
				@yield('content')
				</div>
				<div class="col">
				@include('includes.aside')
				</div>
			</div>
		</div>
		
		@include('includes.footer')
    </body>
</html>
