@extends('layouts.master')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Editar rutinas</h2>

			<table class="table table-striped">
					<tr>

						<th>Nombre</th>
						<th>apellido</th>
						<th>sexo</th>
						<th>dob</th>
						<th>dias</th>
						<th>nivel</th>
						<th>modalidad</th>
						<th>usuario</th>
						<th>psw</th>
						<th>Opciones</th>
					</tr>

					<tr>
					<form method="post">

						{{csrf_field()}}

						<td><input type="text" name="nombre" value="{{ $usuario['nombre']}}"></td>
						<td><input type="text" name="apellido" value="{{ $usuario['apellido']}}"></td>
						<td><input typae="text" name="sexo" value="{{ $usuario['sexo']}}"></td>
						<td><input type="file" name="dob" value="{{ $usuario['dob']}}"></td>
						<td><input type="text" name="dias" value="{{ $usuario['dias']}}"></td>
						<td><input type="text" name="nivel" value="{{ $usuario['nivel']}}"></td>
						<td><input type="text" name="modalidad" value="{{ $usuario['modalidad']}}"></td>
						<td><input type="text" name="usuario" value="{{ $usuario['usario']}}"></td>
						<td><input type="text" name="psw" value="{{ $usuario['psw']}}"></td>
						<td>


							<input value="Editar" class="btn btn-default" type="submit">


						</td>
					</form>
					</tr>


			</table>

		</div>
	</div>
</div>


@stop
