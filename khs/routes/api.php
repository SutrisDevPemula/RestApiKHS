<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'khs'], function () {
    Route::get('/', 'KhsController@index'); 
    Route::get('/{id}', 'KhsController@show'); 
    Route::post('/', 'KhsController@store'); 
    Route::put('/{id}', 'KhsController@update'); 
    Route::delete('/{id}', 'KhsController@delete'); 
});