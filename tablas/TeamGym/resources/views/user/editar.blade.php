@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Editar rutinas</h2>

			<table class="table table-striped">
					<tr>
						<th>Nombre</th>
						<th>apellido</th>
						<th>email</th>
						<th>sexo</th>
						<th>dob</th>
						<th>password</th>
						0
						<th>nivel</th>
						<th>Opciones</th>
					</tr>
					<tr>
					<form method="post">
						{{csrf_field()}}
						<td><input type="text" name="name" value="{{ $user['name']}}"></td>
						<td><input type="text" name="apellido" value="{{ $user['apellido']}}"></td>
						<td><input type="text" name="email" value="{{ $user['email']}}"></td>
						<td><input type="text" name="sexo" value="{{ $user['sexo']}}"></td>
						<td><input type="date" name="dob" value="{{ $user['dob']}}"></td>
						<td><input type="password" name="password" value="{{ $user['password']}}"></td>
						<td><input type="text" name="modalidad" value="{{ $user['modalidad']}}"></td>
						<td><input type="text" name="nivel" value="{{ $user['nivel']}}"></td>
						<td>
							<input value="Editar" class="btn btn-default" type="submit"/>
						</td>
					</form>
					</tr>
			</table>
		</div>
	</div>
</div>


@stop
