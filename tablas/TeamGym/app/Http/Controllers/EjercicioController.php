<?php

namespace App\Http\Controllers;

use App\Ejercicio;
use App\grupo;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ejercicioController extends Controller
{
    public function index($id)
    {

        $ejercicio = Grupo::find($id)->ejercicio;
        $grupos    = Grupo::get();
        return view('ejercicio/index', ['ejercicio' => $ejercicio], ['grupos' => $grupos]);
    }

    public function show($id)
    {

        $ejercicio  = new Ejercicio;
        $ejercicios = $ejercicio->find($id);
        $grupos     = Grupo::get();

        return view('ejercicio/editar', ['ejercicio' => $ejercicios], ['grupos' => $grupos]);
    }
    public function indice()
    {

        $ejercicio = Ejercicio::get();
        $grupos    = Grupo::get();
        return view('ejercicio/index', ['ejercicio' => $ejercicio], ['grupos' => $grupos]);
    }

    public function mostrar($id)
    {

        $ejercicio  = new Ejercicio;
        $ejercicios = $ejercicio->find($id);
        $grupos     = Grupo::get();

        return view('ejercicio/editar', ['ejercicio' => $ejercicios], ['grupos' => $grupos]);
    }
    public function listar(Request $request)
    {
        $grupos = Grupo::get();
        return view('ejercicio/nuevo', ['grupos' => $grupos]);
    }

    public function store(Request $request)
    {
        request()->validate([

            'grupo_id'    => 'required',

            'imagen'      => 'required',

            'explicacion' => 'required',

            'tiempo'      => 'required',

            'material'    => 'required',

            'posicion'    => 'required',

            'consejo'     => 'required',

        ]);
        Ejercicio::create($request->all());
        /**$data = [
        'name'      => Input::get('name'),
        'grupo_id' => Input::get('grupo_id'),
        ];

        ejercicio::create($data);*/

        return redirect('/');

    }

    public function update(Request $request, $id)
    {

        Ejercicio::where('id', $id)->update(['nombre' => Input::get('nombre'), 'grupo_id' => Input::get('grupo_id')]);
        //return Redirect::route('ejercicio_editar', ['ejercicio_editar' => $id]);
        // return Redirect::route('grupo_ejercicio', ['ejercicio_editar' => $id]);
        return redirect('/');
    }

    public function destroy($id)
    {
        Ejercicio::destroy($id);

        return redirect('/');
    }

    public function prueba()
    {

    }
}
