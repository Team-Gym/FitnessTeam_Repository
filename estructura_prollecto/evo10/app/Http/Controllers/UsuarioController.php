<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Usuario;
use Illuminate\Http\Request;
use Input;

class usuarioController extends Controller
{
    public function index()
    {
        $usuarios = Usuario::get();
        return view('usuario/index', ['usuarios' => $usuarios]);
    }

    public function registred()
    {

    }

    public function show($id)
    {
        $usuario  = new Usuario;
        $usuarios = $usuario->find($id);

        return view('usuario/editar', ['usuario' => $usuarios]);
    }

    public function update(Request $request, $id)
    {

        Usuario::where('id', $id)->update(['nombre' => Input::get('nombre'), 'apellido' => Input::get('apellido'), 'sexo' => Input::get('sexo'), 'dob' => Input::get('dob'), 'dias' => Input::get('dias'), 'nivel' => Input::get('nivel'), 'modalida' => Input::get('modalida'), 'usuario' => Input::get('usuario'), 'psw' => Input::get('psw')]);
        return redirect('/');
    }

    public function destroy($id)
    {
        Usuario::destroy($id);

        return redirect('/');
    }

    public function store(Request $request)
    {
        request()->validate([

            'nombre'    => 'required',
            'apellido'  => 'required',
            'sexo'      => 'required',
            'dob'       => 'required',
            'dias'      => 'required',
            'nivel'     => 'required',
            'modalidad' => 'required',
            'usuario'   => 'required',
            'psw'       => 'required',

        ]);
        Usuario::create($request->all());
        /**$data = [
        'nombre'    => Input::get('nombre'),
        'ejercicio' => Input::get('ejercicio'),
        ];

        usuario::create($data);*/

        return redirect('/');
    }

}
