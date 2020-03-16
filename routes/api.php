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

//User API
Route::post('/user_register', 'Api\AuthController@register');
Route::post('/user_login', 'Api\AuthController@login');

//Assujettis API
Route::get('/assujetti', 'AssujettiController@index');
Route::get('/assujetti/{assujetti}', 'AssujettiController@show');
Route::post('/assujetti', 'AssujettiController@store');
Route::put('/assujetti/{assujetti}', 'AssujettiController@update');
Route::delete('/assujetti/{assujetti}', 'AssujettiController@destroy');

//Transport API
Route::get('/transport', 'TransportController@index');
Route::get('/transport/{transport}', 'TransportController@show');
Route::post('/transport', 'TransportController@store');
Route::put('/transport/{transport}', 'TransportController@update');
Route::delete('/transport/{transport}', 'TransportController@destroy');

//Invoice API
Route::get('/register', 'InvoiceController@index');
Route::get('/register/{invoice}', 'InvoiceController@show');
Route::post('/register', 'InvoiceController@store');
Route::put('/register/{invoice}', 'InvoiceController@update');
Route::delete('/register/{invoice}', 'InvoiceController@destroy');

//Taxe API
Route::get('/taxe', 'TaxeController@index');
Route::get('/taxe/{taxe}', 'TaxeController@show');
Route::post('/taxe', 'TaxeController@store');
Route::put('/taxe/{taxe}', 'TaxeController@update');
Route::delete('/taxe/{taxe}', 'TaxeController@destroy');



