<?php

namespace App\Http\Controllers;

use App\Grupo;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class grupoController extends Controller
{
    public function index()
    {
        $grupos = Grupo::get();
        return view('grupo/index', ['grupos' => $grupos]);
    }

    public function show($id)
    {
        $grupo  = new Grupo;
        $grupos = $grupo->find($id);

        return view('grupo/editar', ['grupo' => $grupos]);
    }

    public function destroy($id)
    {
        Grupo::destroy($id);

        return redirect('/');
    }

    public function store(Request $request)
    {
        request()->validate([

            'grupo' => 'required',

        ]);
        Grupo::create($request->all());
        /**$data = [
        'nombre'    => Input::get('nombre'),
        'ejercicio' => Input::get('ejercicio'),
        ];

        grupo::create($data);*/

        return redirect('/');
    }

}
