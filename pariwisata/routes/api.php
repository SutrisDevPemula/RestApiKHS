<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::group(['prefix' => 'user'], function () {
    Route::get('/', 'UsersController@index'); 
    Route::get('/{nim}', 'UsersController@show'); 
    Route::post('/', 'UsersController@store'); 
    Route::put('/{nim}', 'UsersController@update'); 
    Route::delete('/{nim}', 'UsersController@delete'); 
});