<?php

namespace App\Http\Controllers;

use App\Entreno;
use App\Http\Controllers\Controller;
use App\Modalidad;
use Illuminate\Http\Request;

class entrenoController extends Controller
{
    public function index($id)
    {

        //$entreno = entreno::get();
        $modalidads = Modalidad::get();
        $entreno    = Modalidad::find($id)->entreno;

        return view('entreno/index', ['entreno' => $entreno], ['modalidads' => $modalidads]);

    }

    public function show($id)
    {
        $entreno    = new Entreno;
        $entrenos   = $entreno->find($id);
        $modalidads = Modalidad::get();
        return view('entreno/editar', ['entreno' => $entrenos], ['modalidads' => $modalidads]);
    }

    public function listar(Request $request)
    {
        $modalidads = Modalidad::get();
        return view('entreno/nuevo', ['modalidads' => $modalidads]);
    }

    public function store(Request $request)
    {
        request()->validate([

            'modalidad_id' => 'required',

            'repeticiones' => 'required',

            'series'       => 'required',

            'nivel'        => 'required',

            'peso'         => 'required',

        ]);
        Entreno::create($request->all());
        /**$data = [
        'name'      => Input::get('name'),
        'modalidad_id' => Input::get('modalidad_id'),
        ];

        entreno::create($data);*/

        return redirect('/');

    }

    public function update(Request $request, $id)
    {

        Entreno::where('id', $id)->update(['nombre' => Input::get('nombre'), 'modalidad_id' => Input::get('modalidad_id')]);
        //return Redirect::route('entreno_editar', ['entreno_editar' => $id]);
        // return Redirect::route('modalidad_entreno', ['entreno_editar' => $id]);
        return redirect('/');
    }

    public function destroy($id)
    {
        Entreno::destroy($id);

        return redirect('/');
    }

    public function prueba()
    {

    }
}
