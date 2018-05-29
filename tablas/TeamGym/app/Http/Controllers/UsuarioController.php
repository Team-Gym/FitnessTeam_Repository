<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function index()
    {
        $users = User::get();
        return view('user/index', ['users' => $users]);
    }

    public function show($id)
    {
        $user  = new User;
        $users = $user->find($id);

        return view('user/editar', ['user' => $users]);
    }

    public function update(Request $request, $id)
    {

        User::where('id', $id)->update(['name' => Input::get('name'), 'apellido' => Input::get('apellido'), 'email' => Input::get('email'), 'sexo' => Input::get('sexo'), 'dob' => Input::get('dob'), 'password' => Input::get('password'), 'modalidad' => Input::get('modalidad'), 'nivel' => Input::get('nivel')]);
        return redirect('/');
    }

    public function destroy($id)
    {
        User::destroy($id);

        return redirect('/');
    }

    public function store(Request $request)
    {
        request()->validate([

            'name'      => 'required',
            'apellido'  => 'required',
            'email'     => 'required',
            'sexo'      => 'required',
            'dob'       => 'required',
            'password'  => 'required',
            'modalidad' => 'required',
            'nivel'     => 'required',

        ]);
        User::create($request->all());
        /**$data = [
        'nombre'    => Input::get('nombre'),
        'ejercicio' => Input::get('ejercicio'),
        ];

        user::create($data);*/

        return redirect('/');
    }

}
