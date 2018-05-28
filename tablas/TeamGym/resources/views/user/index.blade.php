@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>usuarios</h2>

			<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>nombre</th>
						<th>apellido</th>
						<th>email</th>
						<th>sexo</th>
						<th>dob</th>
						<th>password</th>
						<th>modalidad</th>
						<th>nivel</th>
						<th>Opciones</th>
					</tr>

				@foreach($users as $usuario)
					<tr>
						<td>{{$usuario['id']}}</td>
						<td>{{$usuario['name']}}</td>
						<td>{{$usuario['apellido']}}</td>
						<td>{{$usuario['email']}}</td>
						<td>{{$usuario['sexo']}}</td>
						<td>{{$usuario['dob']}}</td>
						<td>{{$usuario['password']}}</td>
						<td>{{$usuario['modalidad']}}</td>
						<td>{{$usuario['nivel']}}</td>
						<td>
							<a href="{{route('usuario_editar', ['id' => $usuario['id']])}}" class="btn btn-default">Editar</a>
							<a href="{{route('usuario_semana', ['id' => $usuario['id']])}}" class="btn btn-default">Ver semana</a>
							<a href="{{route('usuario_eliminar', ['id' => $usuario['id']])}}" class="btn btn-danger">Eliminar</a>
						</td>
					</tr>
				@endforeach



			</table>

		</div>
	</div>
</div>

@stop
