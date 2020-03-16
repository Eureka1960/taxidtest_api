<?php

use App\Models\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Auth API
Route::get('/auth', 'AuthController@index');
Route::get('/auth/{auth}', 'AuthController@show');
Route::post('/auth', 'AuthController@store');
Route::put('/auth/{auth}', 'AuthController@update');
Route::delete('/auth/{auth}', 'AuthController@delete');

//Assujettis API
Route::get('/assujetti', 'AssujettiController@index');
Route::get('/assujetti/{assujetti}', 'AssujettiController@show');
Route::post('/assujetti', 'AssujettiController@store');
Route::put('/assujetti/{assujetti}', 'AssujettiController@update');
Route::delete('/assujetti/{assujetti}', 'AssujettiController@destroy');

//Transport
Route::get('/transport', 'TransportController@index');
Route::get('/transport/{transport}', 'TransportController@show');
Route::post('/transport', 'TransportController@store');
Route::put('/transport/{transport}', 'TransportController@update');
Route::delete('/transport/{transport}', 'TransportController@destroy');
Route::get('/transport/edit/{transport}', 'TransportController@destroy');



