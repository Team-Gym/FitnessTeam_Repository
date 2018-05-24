@extends('layout')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Equipos</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('equipos.create') }}"> Crear nuevo Equipo </a>
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
            <th>Localida</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($equipos as $equipo)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $equipo->nombre}}</td>
                <td>{{ $equipo->localidad}}</td>
                <td>
                    <a class="btn btn-info" href="{{ route('equipos.show',$equipo->id) }}">Mostrar</a>
                    <a class="btn btn-primary" href="{{ route('equipos.edit',$equipo->id) }}">Editar</a>
                    {!! Form::open(['method' => 'DELETE','route' => ['equipos.destroy', $equipo->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
    </table>


    {!! $equipos->links() !!}
@endsection