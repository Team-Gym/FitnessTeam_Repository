@extends('layout')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Jugadores</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('jugadores.create') }}"> Crear nuevo Jugador </a>
                <a class="btn btn-primary" href="{{ route('equipos.index')}}">Equipos</a>
            </div>
        </div>
    </div>


    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif


    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Nombre</th>
            <th>edad</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($jugadores as $jugador)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $jugador->nombre}}</td>
                <td>{{ $jugador->edad}}</td>
                <td>
                    <a class="btn btn-info" href="{{ route('jugadores.show',$jugador->id) }}">Mostrar</a>
                    <a class="btn btn-primary" href="{{ route('jugadores.edit',$jugador->id) }}">Editar</a>
                    {!! Form::open(['method' => 'DELETE','route' => ['jugadores.destroy', $jugador->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
    </table>


    {!! $jugadores->links() !!}
@endsection