@extends('layouts.app')

@section('content')




<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Agregar Usuario</h2>

			<form method="post">
			{{csrf_field()}}
				  <div class="form-group">
				    <label for="name">name</label>
				    <input type="text" class="form-control" id="name"
				           placeholder="Introduce tu name" name="name" value="{{Input::old('name') }}">
				  </div>
				  <div class="form-group">
				    <label for="apellido" >apellido</label>
				    <input type="text" class="form-control" id="apellido"
				           placeholder="apellido" name="apellido" value="{{Input::old('apellido') }}">
				  </div>
				  <div class="form-group">
				    <label for="email" >email</label>
				    <input type="text" class="form-control" id="email"
				           placeholder="email" name="email" value="{{Input::old('email') }}">
				  </div>
				  <div class="form-group">
				    <label for="sexo" >sexo</label>
				    <input type="text" class="form-control" id="sexo"
				           placeholder = "sexo" name="sexo" value="{{Input::old('sexo') }}">
				  </div>
				  <div class="form-group">
				    <label for="dob" >dob</label>
				    <input type="date" class="form-control" id="dob"
				           placeholder="dob" name="dob" value="{{Input::old('dob') }}">
				  </div>
				  <div class="form-group">
				    <label for="password" >password</label>
				    <input type="password" class="form-control" id="password"
				           placeholder="password" name="password" value="{{Input::old('password') }}">
				  </div>
				  <div class="form-group">
				    <label for="modalidad">modalidad</label>
				    <input type="text" class="form-control" id="modalidad"
				           placeholder="Introduce tu modalidad" name="modalidad" value="{{Input::old('modalidad') }}">
				  </div>
				  <div class="form-group">
				    <label for="nivel">nivel</label>
				    <input type="text" class="form-control" id="nivel"
				           placeholder="Introduce tu nivel" name="nivel" value="{{Input::old('nivel') }}">
				  </div>

				   <input class="btn btn-default" type="submit" value="ENVIAR" />
				</form>

						</div>
					</div>
			</div>



@stop
