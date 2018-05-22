@extends('layouts.master')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">


<h2>Evo1.0 Indice</h2>



			<form method="post">
			{{csrf_field()}}
				  <div class="form-group">
				    <label for="usuario">Usuario</label>
				    <input type="text" class="form-control" id="usuario"
				           placeholder="Introduce tu usuario" name="usuario" value="{{Input::old('usuario') }}">
				  </div>
				  <div class="form-group">
				    <label for="pwd" >Pwd</label>
				    <input type="text" class="form-control" id="pwd"
				           placeholder="pwd" name="pwd" value="{{Input::old('pwd') }}">
				  </div>

				   <input class="btn btn-default" type="submit" value="ENVIAR" />
				</form>

			<table class="table table-striped">
					<tr>
						<th>Registrarse</th>
					</tr>
					<tr>
						<td>
							<a href="{{url('/usuario/nuevo')}}" class="btn btn-default">Nuevo usuario</a>
						</td>
					</tr>
			</table>



		</div>
	</div>
</div>

@stop
