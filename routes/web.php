<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});

Route::get('/details', function () {
    return view('details.details');
});

Route::get('/category', function () {
    return view('category.category');
});

Route::get('/support', function () {
    return view('support.support');
});

Route::get('/about', function () {
    return view('about.about');
});





Route::post('/upload', function () {
    return view('upload');
});
Route::get('/upload', function () {
    return view('upload');
});
Route::get('/welcome', function () {
    return view('welcome');
})->name('welcome');


Route::get('/test', function () {
    return view('test');
})->name('test');

Route::get('/test/1', 'testController@test');