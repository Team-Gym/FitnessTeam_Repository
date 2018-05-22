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

Route::get('/', 'UsuarioController@index');
Route::get('usuario/index', 'UsuarioController@index');

//Route::post('usuario/editar/{id}', 'UsuarioController@update');

Route::get('usuario/editar/{id}', 'UsuarioController@show')->name('usuario_editar');
Route::post('usuario/editar/{id}', 'UsuarioController@update');

Route::get('rutina/index/{id}', 'RutinaController@index')->name('usuario_rutina');
Route::get('usuario/eliminar/{id}', 'UsuarioController@destroy')->name('usuario_eliminar');

Route::get('rutina/editar/{id}', 'RutinaController@show')->name('rutina_editar');
Route::post('rutina/editar/{id}', 'RutinaController@update');

Route::get('rutina/eliminar/{id}', 'RutinaController@destroy')->name('rutina_eliminar');

Route::post('/usuario/nuevo', 'usuarioController@store')->name('nuevo_usuario');

Route::get('/usuario/nuevo', function () {
    return view('/usuario/nuevo');
});

Route::post('/indice/index', 'indiceController@store')->name('nuevo_datos');
//Route::post('indice/index', 'indiceController@show')->name('nuevo_registo');

Route::get('/indice/index', function () {
    return view('/indice/index');
});

Route::post('/rutina/nuevo', 'rutinaController@store')->name('rutina_usuario');
Route::get('/rutina/nuevo', 'rutinaController@listar');

Route::get('/', 'ejercicioController@index');
Route::get('ejercicio/index', 'EjercicioController@index');

Route::get('ejercicio/nuevo', 'ejercicioController@store')->name('ejercicio_rutina');
Route::get('/ejercicio/nuevo', 'ejercicioController@listar');

Route::get('/login', function () {
    return View::make('login.login');
});

Route::post('/registrar', 'RegistrarController@registrar');
