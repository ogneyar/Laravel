@extends('layouts.base')

@section('title')
Главная страница
@endsection

@section('content')
<article>
<h1>Главная страница</h1>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore expedita atque officiis mollitia distinctio, officia itaque magnam corporis unde facere! Deserunt fuga velit tenetur at officiis, voluptate eaque aliquid repudiandae!</p>

@php
//$количество_лотов = 10;
//include_once 'conect.php';
include_once 'pzmarket.php';

foreach($лот as $публикация) {
	echo $публикация;
}

@endphp	


</article>
@endsection

{{--
@section('aside')
@parent
<p>Дополнительный текст</p>
@endsection
--}}