<?php

namespace App\Http\Controllers;

use App\Ejercicio;
use App\Http\Controllers\Controller;
use App\Usuario;
use Illuminate\Http\Request;
use Input;

class ejercicioController extends Controller
{
    public function index()
    {
        $usuarios   = Usuario::get();
        $ejercicios = Ejercicio::get();
        return view('ejercicio/index', ['ejercicios' => $ejercicios], ['usuarios' => $usuarios]);
    }

    public function show($id)
    {
        $ejercicio  = new Ejercicio;
        $ejercicios = $ejercicio->find($id);

        return view('ejercicio/editar', ['ejercicio' => $ejercicios]);
    }

    public function update(Request $request, $id)
    {

        Ejercicio::where('id', $id)->update(['grupomuscular' => Input::get('grupomuscular'), 'ejercicio' => Input::get('ejercicio'), 'imagen' => Input::get('imagen'), 'explicacion' => Input::get('explicacion'), 'tiempo' => Input::get('tiempo'), 'material' => Input::get('material'), 'posicion' => Input::get('posicion'), 'consejo' => Input::get('consejo')]);
        return redirect('/');
    }

    public function destroy($id)
    {
        Ejercicio::destroy($id);

        return redirect('/');
    }

    public function store(Request $request)
    {
        request()->validate([

            'grupomuscular' => 'required',
            'ejercicio'     => 'required',
            'imagen'        => 'required',
            'explicacion'   => 'required',
            'tiempo'        => 'required',
            'material'      => 'required',
            'posicion'      => 'required',
            'consejo'       => 'required',

        ]);
        Ejercicio::create($request->all());
        /**$data = [
        'nombre'    => Input::get('nombre'),
        'ejercicio' => Input::get('ejercicio'),
        ];

        ejercicio::create($data);*/

        return redirect('/');
    }

}
