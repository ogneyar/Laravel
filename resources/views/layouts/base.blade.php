<?php
if ($_SERVER['HTTP_HOST']=='www.prizmarket.ru') header('Location: https://prizmarket.ru');
if ($_SERVER['HTTP_HOST']=='www.prizmarket.online') header('Location: https://prizmarket.online');

include_once '../vendor/autoload.php';

$количество_лотов = 10;
include_once 'conect.php';
include_once 'pzmarket.php';
?>

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
		<meta charset="utf-8" />
		<meta http-equiv="Cache-Control" content="no-cache">

		<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<meta name="description" content="Сайт для рекламы товаров/услуг за криптовалюту PRIZM" />
		<meta name="keywords" content="PRIZM, криптовалюта, товары, услуги, куплю, продам, безоплатно, бесплатно" />		
		<!-- имя автора документа -->
		<meta name="author" content="Огънеяръ" />
		<!-- управление роботами -->
		<meta name="robots" content="all,index,follow" />
		<!-- читательская аудитория документа (global - публичный документ) -->
		<meta name="distribution" content="global" />
		<!-- возрастной рейтинг (General - общая категория) -->
		<meta name="Rating" content="General">
		<!-- статус документа (Dynamic - для изменяющихся документов) -->
		<meta name="Document-state" content="Dynamic">

		<title>@yield('title')</title>

        <!-- Font 'Nunito' -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">
				
        <!-- Style css -->
		<link rel="stylesheet" href="/css/app.css">

		<!-- Font awesome -->
		<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
			
		<!-- Icons -->
		<link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
		<link rel="manifest" href="/favicon/site.webmanifest">
		<link rel="mask-icon" href="/favicon/safari-pinned-tab.svg" color="#5bbad5">		
		<meta name="msapplication-TileColor" content="#00aba9">
		<meta name="msapplication-config" content="/favicon/browserconfig.xml">
		<meta name="theme-color" content="#ffffff">
		
		<!-- Add libs for jQuery, Ajax... -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script> 
		
		<!-- Прилипание меню к верху страницы -->
		<script type="text/javascript">
			if(screen.width > 300) { // Animate navigation
				$(document).ready(function() {
				// функцию скролла привязать к окну браузера
					$(window).scroll(function(){
						var distanceTop = $('#slideMenu').offset().top;
						if ($(window).scrollTop() >= distanceTop)
							$ ('nav').attr ("id", "fixed");
						else //if ($(window).scrollTop() < distanceTop)
							$ ('nav').attr ("id", "nav");
					});
				});
			}
		</script>	

		@if(Request::is('/'))
		<style type="text/css">
			@media (min-width: 700px) {
			nav a:nth-child(1), nav#fixed a:nth-child(1) {
				border-top: 5px solid rgba(255,235,59);
			}}
		</style>
		@endif
		@if(Request::is('podrobnosti'))
		<style type="text/css">
			@media (min-width: 700px) {
			nav a:nth-child(2), nav#fixed a:nth-child(2) {
				border-top: 5px solid rgba(255,235,59);
			}}
		</style>
		@endif
		@if(Request::is('kategory'))
		<style type="text/css">
			@media (min-width: 700px) {
			nav a:nth-child(3), nav#fixed a:nth-child(3) {
				border-top: 5px solid rgba(255,235,59);
			}}
		</style>
		@endif		
		@if(Request::is('support'))
		<style type="text/css">
			@media (min-width: 700px) {
			nav a:nth-child(4), nav#fixed a:nth-child(4) {
				border-top: 5px solid rgba(255,235,59);
			}}
		</style>
		@endif
		@if(Request::is('about'))
		<style type="text/css">
			@media (min-width: 700px) {
			nav a:nth-child(5), nav#fixed a:nth-child(5) {
				border-top: 5px solid rgba(255,235,59);
			}}
		</style>
		@endif		
	
    </head>
	<body>
		<header>
			@include('includes.logo')
			@include('includes.lk_menu')
		</header>

		@include('includes.menu')
		<div id="slideMenu"></div>

		@if(Request::is('/test'))
			@include('includes.hero')
		@endif	

		<div id="wrapper">
			<div id="TopCol">		
				@include('includes.topside')
			</div>
			<div id="leftCol">		
				@yield('content')
			</div>
			<div id="rightCol">
				@include('includes.aside')
			</div>
		</div>
		
		@include('includes.footer')
    </body>
</html>
