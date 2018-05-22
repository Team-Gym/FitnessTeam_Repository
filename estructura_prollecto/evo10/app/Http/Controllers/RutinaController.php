<?php

namespace App\Http\Controllers;

use App\Ejercicio;
use App\Http\Controllers\Controller;
use App\Modalidad;
use App\Rutina;
use App\Usuario;
use Illuminate\Http\Request;

class rutinaController extends Controller
{
    public function index($id)
    {

        //$rutina = rutina::get();

        $rutina = Usuario::find($id)->rutina;

        return view('rutina/index', ['rutina' => $rutina]);

    }

    public function show($id)
    {
        $rutina   = new Rutina;
        $rutinas  = $rutina->find($id);
        $usuarios = Usuario::get();
        return view('rutina/editar', ['rutina' => $rutinas], ['usuarios' => $usuarios]);
    }

    public function listar(Request $request)
    {
        $usuarios    = Usuario::get();
        $modalidades = Modalidad::get();
        $ejercicios  = Ejercicio::get();

        return view('rutina/nuevo', ['usuarios' => $usuarios, 'modalidades' => $modalidades, 'ejercicios' => $ejercicios]);

    }

    public function store(Request $request)
    {
        request()->validate([
            'nombre'       => 'required',
            'modalidad_id' => 'required',
            'usuario_id'   => 'required',
            'ejercicio_id' => 'required',
            'ejercicio1'   => 'required',
            'ejercicio2'   => 'required',
            'ejercicio3'   => 'required',
            'ejercicio4'   => 'required',
            'ejercicio5'   => 'required',
            'ejercicio6'   => 'required',
            'ejercicio7'   => 'required',
            'ejercicio8'   => 'required',
            'ejercicio9'   => 'required',
            'ejercicio10'  => 'required',

        ]);
        Rutina::create($request->all());
        /**$data = [
        'name'      => Input::get('name'),
        'usuario_id' => Input::get('usuario_id'),
        ];

        rutina::create($data);*/

        return redirect(' / ');

    }

    public function update(Request $request, $id)
    {

        Rutina::where('id', $id)->update(['nombre' => Input::get('nombre'), 'modalidad_id' => Input::get('modalidad_id'), 'usuario_id' => Input::get('usuario_id'), 'ejercicio_id' => Input::get('ejercicio_id'), 'ejercicio1' => Input::get('ejercicio1'), 'ejercicio2' => Input::get('ejercicio2'), 'ejercicio3' => Input::get('ejercicio3'), 'ejercicio4' => Input::get('ejercicio4'), 'ejercicio5' => Input::get('ejercicio5'), 'ejercicio6' => Input::get('ejercicio6'), 'ejercicio7' => Input::get('ejercicio7'), 'ejercicio8' => Input::get('ejercicio8'), 'ejercicio9' => Input::get('ejercicio9'), 'ejercicio10' => Input::get('ejercicio10')]);
        //return Redirect::route('rutina_editar', ['rutina_editar' => $id]);
        // return Redirect::route('usuario_rutina', ['rutina_editar' => $id]);
        return redirect(' / ');
    }

    public function destroy($id)
    {
        Rutina::destroy($id);

        return redirect(' / ');
    }

    public function prueba()
    {

    }
}
