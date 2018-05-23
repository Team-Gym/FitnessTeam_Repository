<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Usuario;
use Illuminate\Http\Request;
use Input;

class IndiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$usuarios = Usuario::get();
        //$dator[];
        //$datos['nombre'] = 'mauricio';
        //$usuarios = 'Mairicio R';
        //return view('indice/datos')->with('nombre', $usuarios);
        //return view('indice/index', ['usuarios' => $usuarios]);
        $usuarios = Usuario::get();
        return view('indice/datos', ['usuarios' => $usuarios]);
    }

    public function show($id)
    {
        $usuario  = new Usuario;
        $usuarios = $usuario->find($id);

        return view('indice/datos', ['usuario' => $usuarios]);
        // $usuarios = 'Mairicio R';
        //return view('indice/datos')->with('nombre', $usuarios);
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
        $usuarios = Usuario::get();
        $user     = $request->input('usuario');
        $pwd      = $request->input('pwd');
        //$food = Food::create($input);
        $result = "";
        foreach ($usuarios as $usuario) {

            if ($user == $usuario['usuario'] && $pwd == $usuario['psw']) {
                $result = "tot OK";
                break;
            } else {
                $result = "no coinsideis";
            }

        }
        return view('indice/datos')->with(['resultado' => $result, 'usuarios' => $usuarios, 'user' => $user]);
    }

    public function registrar()
    {
        $usuario  = Input::get('usuario');
        $password = Hash::make(Input::get('password'));
        $email    = Input::get('email');
        $rules    = array(
            'usuario'  => array('required', 'min:3', 'max:20', 'alpha_dash', 'required'),
            'password' => array('required', 'min:6', 'max:50', 'alpha_dash', 'required'),
            'email'    => array('required', 'email'),
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return Redirect::to('login')->withInput()->withErrors($validator);
        }

        $user = Usuario::where('nombre', '=', $usuario)->orWhere('correo', '=', $email)->first();
        if (is_null($user)) {
            return Redirect::to('login')->with('msg', 'Te has registrado correctamente');
            $user                = new Usuario;
            $user->nombre        = $usuario;
            $user->password      = $password;
            $user->correo        = $email;
            $user->fecha_ingreso = time();
            $user->ip            = Request::getClientIp();

            $user->save();
        } else {
            echo "a";
            //return Redirect::to('login')->with('msg','El nombre de usuario o el email ya está en uso');
        }
    }
}
