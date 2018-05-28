<?php

namespace App\Http\Controllers;

use App\Ejercicio;
use App\Grupo;
use App\Http\Controllers\Controller;
use App\Rutina;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RutinaController extends Controller
{
    public function index($id)
    {

        //$rutinas = rutina::get();

        $rutina = User::find($id)->rutina;
        return view('rutina/index', ['rutinas' => $rutina]);
    }
    public function indice()
    {

        $ejercicio = Ejercicio::get();
        $grupos    = Grupo::get();
        $rutinas   = Rutina::get();
        return view('rutina/index', ['rutinas' => $rutinas], ['ejercicio' => $ejercicio], ['grupos' => $grupos]);
    }

    public function show(Request $request, $id)
    {
        $rutinas    = new Rutina;
        $rutina     = $rutinas->find($id);
        $user       = User::get();
        $ejercicios = Ejercicio::get();

        return view('rutina/editar', ['rutina' => $rutina], ['ejercicios' => $ejercicios]);

    }
    public function listar()
    {
        $ejercicios = Ejercicio::get();
        $rutina     = Rutina::get();
        return view('rutina/nuevo', ['rutinas' => $rutina], ['ejercicios' => $ejercicios]);

    }

    public function store(Request $request)
    {
        request()->validate([
            'ejercicio1_id'  => 'required',
            'ejercicio2_id'  => 'required',
            'ejercicio3_id'  => 'required',
            'ejercicio4_id'  => 'required',
            'ejercicio5_id'  => 'required',
            'ejercicio6_id'  => 'required',
            'ejercicio7_id'  => 'required',
            'ejercicio8_id'  => 'required',
            'ejercicio9_id'  => 'required',
            'ejercicio10_id' => 'required',
        ]);
        Rutina::create($request->all());
        /**$data = [
        'name'      => Input::get('name'),
        'user_id' => Input::get('user_id'),
        ];

        rutina::create($data);*/

        return redirect(' / ');

    }

    public function update(Request $request, $id)
    {

        Rutina::where('id', $id)->update(['ejercicio1_id' => Input::get('ejercicio1_id'), 'ejercicio2_id' => Input::get('ejercicio2_id'), 'ejercicio3_id' => Input::get('ejercicio3_id'), 'ejercicio4_id' => Input::get('ejercicio4_id'), 'ejercicio5_id' => Input::get('ejercicio5_id'), 'ejercicio6_id' => Input::get('ejercicio6_id'), 'ejercicio7_id' => Input::get('ejercicio7_id'), 'ejercicio8_id' => Input::get('ejercicio8_id'), 'ejercicio9_id' => Input::get('ejercicio9_id'), 'ejercicio10_id' => Input::get('ejercicio10_id')]);
        //return Redirect::route('rutina_editar', ['rutina_editar' => $id]);
        // return Redirect::route('user_rutina', ['rutina_editar' => $id]);
        return redirect(' / ');
    }

    public function destroy($id)
    {
        Rutina::destroy($id);

        return redirect(' / ');
    }

    /**public function comprovar(Request $request)
    {
    $usuarios = Usuario::get();
    //$user     = $request->input('usuario');
    //$pwd      = $request->input('pwd');
    //$food = Food::create($input);
    $result = "";
    foreach ($usuarios as $usuario) {

    if ($user == $usuario['usuario'] && $pwd == $usuario['psw']) {
    $result = "tot OK";
    break;
    } else {
    $result = "no coincideix";
    }

    }return view('indice/crear')->with(['resultado' => $result, 'usuarios' => $usuarios, 'user' => $user]);
    }*/

    public function prueba()
    {

    }
    public function comprovar(Request $request)
    {
        $usuarios = User::get();
        //$user      = Sentry::getUser();
        //$idUsuario = $user->id;
        $user = Auth::user();

// Get the currently authenticated user's ID...
        $id = Auth::id();

        //$user     = $request->input('usuario');
        //$pwd      = $request->input('pwd');
        //$food = Food::create($input);
        //$result = "";
        //foreach ($usuarios as $usuario) {

        // if ($user == $usuario['usuario'] && $pwd == $usuario['psw']) {
        //   $result = "tot OK";
        // break;
        // } else {
        //   $result = "no coincideix";
        // }

        //}
        return view('rutina/crear')->with(['user' => $user, 'id' => $id]);
    }
}
