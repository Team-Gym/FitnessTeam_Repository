<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Jugador;
use App\Equipo;
class JugadorController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $jugadores = Jugador::latest()->paginate(5);
        return view('jugadores.index',compact('jugadores'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('jugadores.create');
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'nombre' => 'required',
            'edad' => 'required',
            'id_equipo' =>'required',
        ]);
        Jugador::create($request->all());
        return redirect()->route('jugadores.index')
            ->with('success','Jugadores created successfully');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $jugador = Jugador::find($id);
        return view('jugadores.show',compact('jugador'));
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $jugador = Jugador::find($id);
        $equipo = Equipo::all();
        return view('jugadores.edit',compact('jugador'),compact('equipo'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        request()->validate([
            'nombre' => 'required',
            'edad' => 'required',


        ]);
        Jugador::find($id)->update($request->all());
        return redirect()->route('jugadores.index')
            ->with('success','Jugador updated successfully');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Jugador::find($id)->delete();
        return redirect()->route('jugadores.index')
            ->with('success','Jugador deleted successfully');
    }
}
