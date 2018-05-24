<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
/*Route::get('jugadores', function () {
    $jugador = Jugador::find($id);
    return view('JugadoreController');
});
Route::get('equipos', function () {
    return view('welcome');
});*/
Route::resource('jugadores','JugadorController');
Route::resource('equipos','EquipoController');

//Route::get('jugadores/create','JugadorController@create');