<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});

Route::get('/test', function () {
    return view('test');
});

Route::post('/upload', function () {
    return view('upload');
});
Route::get('/upload', function () {
    return view('upload');
});

Route::get('/welcome', function () {
    return view('welcome');
});
