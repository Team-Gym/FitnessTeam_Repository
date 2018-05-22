@extends('layouts.master')

@section('content')




<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Agregar Rutina</h2>

			<form method="post">
			{{csrf_field()}}
				  <div class="form-group">
				    <label for="nombre">Nombre</label>
				    <input type="text" class="form-control" id="nombre"
				           placeholder="Introduce tu nombre" name="nombre" value="{{Input::old('nombre') }}">
				  </div>
				  <div class="form-group">
				    <label for="apellido" >apellido</label>
				    <input type="text" class="form-control" id="apellido"
				           placeholder="apellido" name="apellido" value="{{Input::old('apellido') }}">
				  </div>
				  <div class="form-group">
				    <label for="sexo" >sexo</label>
				    <input type="text" class="form-control" id="sexo"
				           placeholder="sexo" name="sexo" value="{{Input::old('sexo') }}">
				  </div>
				  <div class="form-group">
				    <label for="dob" >dob</label>
				    <input type="date" class="form-control" id="dob"
				           placeholder = "Dob" name="dob" value="{{Input::old('dob') }}">
				  </div>
				  <div class="form-group">
				    <label for="dias" >dias</label>
				    <input type="number" class="form-control" id="dias"
				           placeholder="dias" name="dias" value="{{Input::old('dias') }}">
				  </div>
				  <div class="form-group">
				    <label for="nivel" >nivel</label>
				    <input type="number" class="form-control" id="nivel"
				           placeholder="nivel" name="nivel" value="{{Input::old('nivel') }}">
				  </div>
				 <div class="form-group">
				    <label for="modalidad" >modalida</label>
				    <input type="text" class="form-control" id="modalidad"
				           placeholder="modalidad" name="modalidad" value="{{Input::old('modalidad') }}">
				  </div>
				  <div class="form-group">
				    <label for="usuario" >usuario</label>
				    <input type="text" class="form-control" id="usuario"
				           placeholder="usuario" name="usuario" value="{{Input::old('usuario') }}">
				  </div>
				  <div class="form-group">
				    <label for="psw" >psw</label>
				    <input type="number" class="form-control" id="psw"
				           placeholder="psw" name="psw" value="{{Input::old('psw') }}">
				  </div>

				   <input class="btn btn-default" type="submit" value="ENVIAR" />
				</form>

						</div>
					</div>
			</div>



@stop
