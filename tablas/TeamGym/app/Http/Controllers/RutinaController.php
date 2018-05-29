<?php

namespace App\Http\Controllers;

use App\Ejercicio;
use App\EjercicioModalidad;
use App\Entreno;
use App\Grupo;
use App\Http\Controllers\Controller;
use App\Modalidad;
use App\Rutina;
use App\Semana;
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

        return redirect('home');

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
        //CONSULTAS SQL
        /*

        //usuarios
        $users = User::all();
        $users = User::get();
        //usuario 10
        $user = User::find(10);
        $user = User::all()->first();
        //Crear Registro
        $user = new User;
        $user->username = "user";
        $user->save();
        // save retorna un boolean, podrían usarlo así:
        if( $user->save() ){
        var_dump($user->id);
        }
        //Actualizar
        $user = User::find(10);
        $user->username = "new user";
        $user->save();/
        //eliminar
        $user = User::find(10);
        $user->delete();
        //WHERE
        $user = User::where("estado","=",1)->find(10);
        //DEVOLVVIENTDO INSTANCIAS
        $users = User::where("estado","=",1)->paginate(10);
        // En la vista
        foreach ($users as $key => $user) {
        // $user es una Instancia de la clase User
        }
        //ALGUNAS COLUMNAS
        $users = User::where("estado","=",1)->select("id","username")->paginate(10);
        // RAW
        //////
        $users = User::where("estado","=",1)
        ->select(DB::raw("id,username, DATE_FORMAT(created_at,'%d/%m/%Y %h:%i %p') AS fecha"))
        ->paginate(10);
        ´//OTRAS FUNCIONES
        $users = User::where("estado","=",1)
        ->whereNotNull('updated_at')
        ->whereNull('email')
        ->whereIn('id', [1, 2, 3])
        ->whereBetween('edad', [1, 30])
        ->where('username','like','%ad%')
        ->orderBy('username')
        ->orderBy('created_at','desc')
        ->skip(10)->take(5)
        ->get();
        //CONDICIONES EN CONSTA
        $users = User::where("estado","=",1);
        if($buscar)
        $users = $users->where('username','like','%ad%');
        $users = $users->get();
        //PARA QUE KLOS REGISTROS DEUELVA FORMATO ARRAY O JSON
        $users = User::where("estado","=",1)->get()->toArray();
        $users = User::where("estado","=",1)->get()->toJson();
        $users = User::where("estado","=",1)->first()->toArray();

        /////////////////////////////////////////////////////////
        //CONSULTAS CON JOIN y LEFT JOIN
        ////////////////////////////////////////////////////////

        $users = User::join("roles","users.roles_id","=","roles.id")
        ->where('users.estado','=',1)
        ->get();

        $users = User::leftJoin("roles","users.roles_id","=","roles.id")
        ->where('users.estado','=',1)
        ->get();

        $users = User::join("roles","users.roles_id","=","roles.id")
        ->leftJoin('posts',function($join){
        $join->on('users.posts_id','=','posts.id')->where('posts.estado','=',1);
        })
        ->where('users.estado','=',1)
        ->get();

        $users = User::join("roles","users.roles_id","=","roles.id")
        ->leftJoin(DB::raw("(SELECT * FROM posts where posts.estado=1) as posts"),function($join){
        $join->on('users.posts_id','=','posts.id');
        })
        ->where('users.estado','=',1)
        ->get();

        /////////////////////////////////////////////////////////
        //CONSULTAS VARIAS
        ////////////////////////////////////////
        DB::table('users')
        ->whereExists(function ($query) {
        $query->select(DB::raw(1))
        ->from('orders')
        ->whereRaw('orders.user_id = users.id');
        })
        ->get();

        $users = DB::table('orders')
        ->select('department', DB::raw('SUM(price) as total_sales'))
        ->groupBy('department')
        ->havingRaw('SUM(price) > 2500')
        ->get();
        //PARA ISERTAR UN EGISTRO
        DB::table('users')->insert(
        ['username' => 'editor', 'edad' => 20]
        );
        //ACTUALIZAR

         */
        //$user      = Sentry::getUser();
        //$idUsuario = $user->id;ç
        $ejercicios = Ejercicio::get();
        $rutina     = Rutina::get();
        $semana     = Semana::get();
        //$modalidad          = Modalidad::get();
        $entreno            = Entreno::get();
        $ejerciciomodalidad = EjercicioModalidad::get();
        $user               = Auth::user();
        $usuarios           = User::get();
        $id                 = Auth::id();

        //$user = User::where("estado","=",1)->find(10);
        //Consultamios el id de lamodalidad
        $id_modalidads = Modalidad::where('nombre', $user['modalidad'])
            ->get(['id']);

        foreach ($id_modalidads as $modalidad) {
            # code...
        }
        $consultaEntrenos = Entreno::where('modalidad_id', $modalidad['id'])
            ->get();
        foreach ($consultaEntrenos as $entrenos) {

            if ($entrenos['nivel'] == $user['nivel']) {

                $entreno = $entrenos;

            }
        }

        //$entreno = Entreno::where('nivel', $user['nivel'])
        //->get(['id']);

        /*
        $id_modalidad = User::join("modalidads", "users.id", "=", "modalidads.id")
        ->where('users.modalidad', '=', $user['modalidad'])
        ->get();
        $users = User::join("roles", "users.roles_id", "=", "roles.id")
        ->where('users.estado', '=', 1)
        ->get();

        $users = User::leftJoin("roles", "users.roles_id", "=", "roles.id")
        ->where('users.estado', '=', 1)
        ->get();

        $users = User::join("roles", "users.roles_id", "=", "roles.id")
        ->leftJoin('posts', function ($join) {
        $join->on('users.posts_id', '=', 'posts.id')->where('posts.estado', '=', 1);
        })
        ->where('users.estado', '=', 1)
        ->get();

        $users = User::join("roles", "users.roles_id", "=", "roles.id")
        ->leftJoin(DB::raw("(SELECT * FROM posts where posts.estado=1) as posts"), function ($join) {
        $join->on('users.posts_id', '=', 'posts.id');
        })
        ->where('users.estado', '=', 1)
        ->get();
         */

// Get the currently authenticated user's ID...

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
        return view('rutina/crear')->with(['user' => $user, 'id' => $id, 'entreno' => $entreno]);
    }
}
