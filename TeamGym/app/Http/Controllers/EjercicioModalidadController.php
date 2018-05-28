<?php

namespace App\Http\Controllers;

use App\Ejercicio;
use App\EjercicioModalidad;
use App\Http\Controllers\Controller;
use App\Modalidad;
use Illuminate\Http\Request;

class EjercicioModalidadController extends Controller
{
    public function index($id)
    {

        //$ejerciciomodalidad = ejerciciomodalidad::get();

        $ejerciciomodalidad = Modalidad::find($id)->ejerciciomodalidad;
        return view('ejerciciomodalidad/index', ['ejerciciomodalidad' => $ejerciciomodalidad]);

    }
    public function indice($id)
    {

        //$ejerciciomodalidad = ejerciciomodalidad::get();
        $modalidad          = Modalidad::get();
        $ejercicio          = new Ejercicio;
        $ejercicios         = $ejercicio->find($id);
        $ejerciciomodalidad = Ejercicio::find($id)->ejerciciomodalidad;

        return view('ejerciciomodalidad/indice', ['ejerciciomodalidad' => $ejerciciomodalidad, 'ejercicios' => $ejercicios, 'modalidad' => $modalidad]);

    }

    public function show($id)
    {
        $ejerciciomodalidad    = new EjercicioModalidad;
        $ejerciciosmodalidades = $ejerciciomodalidad->find($id);
        $modalidadds           = Modalidad::get();
        return view('ejerciciomodalidad/editar', ['ejerciciomodalidad' => $ejerciciosmodalidades], ['modalidades' => $modalidades]);
    }

    public function listar(Request $request)
    {
        $modalidads = Modalidad::get();
        return view('ejerciciomodalidad/nuevo', ['modalidads' => $modalidads]);
    }

    public function store(Request $request)
    {
        request()->validate([

            'ejercicio_id' => 'required',

            'modalidad_id' => 'required',

        ]);
        EjercicioModalidad::create($request->all());
        /**$data = [
        'name'      => Input::get('name'),
        'modalidad_id' => Input::get('modalidad_id'),
        ];

        ejerciciomodalidad::create($data);*/

        return redirect('/');

    }

    public function update(Request $request, $id)
    {

        EjercicioModalidad::where('id', $id)->update(['nombre' => Input::get('nombre'), 'modalidad_id' => Input::get('modalidad_id')]);
        //return Redirect::route('persona_editar', ['persona_editar' => $id]);
        // return Redirect::route('modalidad_persona', ['persona_editar' => $id]);
        return redirect('/');
    }

    public function destroy($id)
    {
        EjercicioModalidad::destroy($id);

        return redirect('/');
    }

    public function prueba()
    {

    }
}
