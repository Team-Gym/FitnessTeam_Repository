<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Rutina;
use App\User;
use Illuminate\Http\Request;

class SemanaController extends Controller
{
    public function index($id)
    {

        //$semana = semana::get();

        $semana = User::find($id)->semana;
        return view('semana/index', ['semana' => $semana]);

    }
    public function indice($id)
    {

        //$semana = semana::get();

        $semana = Rutina::find($id)->semana;
        return view('semana/indice', ['semana' => $semana]);

    }

    public function show($id)
    {
        $semana     = new Semana;
        $semanauser = $semana->find($id);
        $users      = User::get();
        return view('semana/editar', ['semana' => $semanauser], ['users' => $users]);
    }

    public function listar(Request $request)
    {
        $users = User::get();
        return view('semana/nuevo', ['users' => $users]);
    }

    public function store(Request $request)
    {
        request()->validate([

            'usuario_id'   => 'required',

            'lunes'        => 'required',

            'martes'       => 'required',

            'miercoles'    => 'required',

            'jueves'       => 'required',

            'viernes'      => 'required',

            'sabado'       => 'required',

            'domingo'      => 'required',

            'repeticiones' => 'required',

            'serire'       => 'required',

            'peso'         => 'required',

        ]);
        Semana::create($request->all());
        /**$data = [
        'name'      => Input::get('name'),
        'user_id' => Input::get('user_id'),
        ];

        semana::create($data);*/

        return redirect('/');

    }

    public function update(Request $request, $id)
    {

        Semana::where('id', $id)->update(['usuario_id' => Input::get('usuario_id'), 'lunes' => Input::get('lunes'), 'martes' => Input::get('martes'), 'miercoles' => Input::get('miercoles'), 'jueves' => Input::get('jueves'), 'viernes' => Input::get('viernes'), 'sabado' => Input::get('sabado'), 'domingo' => Input::get('domingo'), 'repeticiones' => Input::get('repeticiones'), 'serie' => Input::get('serie'), 'peso' => Input::get('peso')]);
        //return Redirect::route('persona_editar', ['persona_editar' => $id]);
        // return Redirect::route('user_persona', ['persona_editar' => $id]);
        return redirect('/');
    }

    public function destroy($id)
    {
        Semana::destroy($id);

        return redirect('/');
    }

    public function prueba()
    {

    }
}
