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

        Modalidad::where('id', $id)->update(['nombre' => Input::get('nombre')]);
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

            'nombre' => 'required',

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
