@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                    <uf>
                        <a href="{{url('/ejercicio/indice')}}"><li>ejercicios</li></a>
                        <a href="{{url('/user/index')}}"><li>usuarios</li></a>
                        <a href="{{url('/user/nuevo')}}"><li>Nuevo usuario</li></a>
                        <a href="{{url('/grupo/index')}}"><li>grupos</li></a>
                        <a href="{{url('/modalidad/index')}}"><li>modalidades</li></a>
                        <a href="{{url('/rutina/indice')}}"><li>Ver rutinas</li></a>
                        <a href="{{url('/rutina/nuevo')}}"><li>Nueva rutina</li></a>
                        <a href="{{url('/rutina/crear')}}"><li>RutinaBoot</li></a>
                    </uf>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
