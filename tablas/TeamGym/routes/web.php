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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('grupos', 'GrupoController');
Route::resource('ejercicios', 'EjercicioController');
Route::resource('modalidades', 'ModalidadController');
Route::resource('entrenos', 'EntrenoController');
//Route::resource('rutina', 'EntrenoController');
//Route::get('/', 'ejercicioController@index');

Route::get('grupo/index', 'GrupoController@index');

Route::get('grupo/editar/{id}', 'GrupoController@show')->name('grupo_editar');
Route::post('grupo/editar/{id}', 'Grupoontroller@update');
Route::get('grupo/eliminar/{id}', 'grupoController@destroy')->name('grupo_eliminar');
Route::get('ejercicio/index/{id}', 'EjercicioController@index')->name('grupo_ejercicio');
Route::get('ejercicio/indice', 'EjercicioController@indice');
Route::get('ejercicio/nuevo', 'ejercicioController@store')->name('ejercicio_rutina');
Route::get('/ejercicio/nuevo', 'ejercicioController@show');

Route::get('modalidades/index', 'modalidadController@index');
Route::get('modalidad/index', 'ModalidadController@index');
Route::get('entreno/index/{id}', 'entrenoController@index')->name('modalidad_entreno');
Route::get('entreno/editar/{id}', 'EntrenoController@show')->name('entreno_editar');
Route::post('entreno/editar/{id}', 'EntrenoController@update');
Route::get('ejerciciomodalida/index/{id}', 'EjercicioModalidadController@index')->name('modalidad_ejerciciomodalida');
Route::get('ejerciciomodalida/indice/{id}', 'EjercicioModalidadController@indice')->name('ejercicio_ejerciciomodalida');
Route::get('semana/index/{id}', 'SemanaController@index')->name('usuario_semana');
Route::get('semana/indice/{id}', 'SemanadController@indice')->name('ejercicio_semana');

Route::get('/rutina/crear', 'rutinaController@comprovar')->name('nuevo_datos');
//Route::post('indice/index', 'indiceController@show')->name('nuevo_registo');

//Route::get('/', 'UsuarioController@index');
Route::get('user/index', 'UsuarioController@index');
Route::get('user/editar/{id}', 'UsuarioController@show')->name('usuario_editar');
Route::post('user/editar/{id}', 'UsuarioController@update');
Route::get('user/eliminar/{id}', 'UsuarioController@destroy')->name('usuario_eliminar');
Route::post('user/nuevo', 'usuarioController@store')->name('nuevo_usuario');
Route::get('rutina/index/{id}', 'RutinaController@index')->name('semana_rutina');
Route::get('rutina/indice', 'RutinaController@indice');
//Route::get('rutina/index/{id}', 'RutinaController@index')->name('usuario_rutina');

Route::get('rutina/editar/{id}', 'RutinaController@show')->name('rutina_editar');
Route::post('rutina/editar/{id}', 'RutinaController@update');
Route::get('rutina/eliminar/{id}', 'RutinaController@destroy')->name('rutina_eliminar');

Route::post('rutina/nuevo', 'rutinaController@store')->name('rutina_semana');
Route::get('rutina/nuevo', 'rutinaController@listar');

Route::get('/user/nuevo', function () {
    return view('/user/nuevo');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
