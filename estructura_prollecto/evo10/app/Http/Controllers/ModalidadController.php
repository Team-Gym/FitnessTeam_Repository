<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Modalidad;
use Illuminate\Http\Request;
use Input;

class modalidadController extends Controller
{
    public function index()
    {
        $modalidads = Modalidad::get();
        return view('modalidad/index', ['modalidads' => $modalidads]);
    }

    public function show($id)
    {
        $modalidad  = new Modalidad;
        $modalidads = $modalidad->find($id);

        return view('modalidad/editar', ['modalidad' => $modalidads]);
    }

    public function update(Request $request, $id)
    {

        Modalidad::where('id', $id)->update(['modalidad' => Input::get('modalidad'), 'repeticiones' => Input::get('repeticiones')], 'series' => Input::get('series'), 'nivel' => Input::get('nivel'), 'peso' => Input::get('peso'));
        return redirect('/');
    }

    public function destroy($id)
    {
        Modalidad::destroy($id);

        return redirect('/');
    }

    public function store(Request $request)
    {
        request()->validate([

            'nombre'       => 'required',
            'modalidad'    => 'required',
            'repeticiones' => 'required',
            'series'       => 'required',
            'nivel'        => 'required',
            'peso'         => 'required',

        ]);
        Modalidad::create($request->all());
        /**$data = [
        'nombre'    => Input::get('nombre'),
        'ejercicio' => Input::get('ejercicio'),
        ];

        modalidad::create($data);*/

        return redirect('/');
    }

}
