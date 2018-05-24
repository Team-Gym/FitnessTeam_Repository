@extends('layout')
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Jugadores</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('jugadores.index') }}"> Back</a>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nombre del jugador:</strong>
                {{ $jugador->nombre}}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Edad:</strong>
                {{ $jugador->edad}}
            </div>
        </div>

    </div>

@endsection