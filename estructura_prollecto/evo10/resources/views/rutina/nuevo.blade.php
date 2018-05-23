@extends('layouts.master')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Agregar Rutina</h2>

			<form method="post">
					{{csrf_field()}}

				  <div class="form-group">
				    <label for="usuario">nombre</label>
				    <input type="text" class="form-control" id="name"
				           placeholder="Introduce tu name" name="name" value="{{Input::old('name') }}">
				  </div>


				  <div class="form-group">

				    <label for="usuario_id" >usuario_id</label>

				    <select name="usuario_id" id="usuario_id" class="form-control" value="{{Input::old('usuario_id') }}">

				    			@foreach($usuarios as $usuario)
					<option value="{{$usuario['id']}}" @if($usuario=='$usuario["id"]')selected @endif >{{$usuario['nombre']}}</option>
								@endforeach

					</select>

				  </div>

				  <div class="form-group">

				    <label for="modalidad_id" >modalidad_id</label>

				    <select name="modalidad_id" id="modalidad_id" class="form-control" value="{{Input::old('modalidad_id') }}">

				    			@foreach($modalidades as $modalidad)
					<option value="{{$modalidad['id']}}" @if($modalidad=='$modalidad["id"]')selected @endif >{{$modalidad['modalidad']}}</option>
								@endforeach

					</select>

				  </div>

				  <div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="{{Input::old('ejercicio_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>







					 <input class="btn btn-default" type="submit" value="Enviar" />


				</form>

						</div>
					</div>
			</div>

@stop
