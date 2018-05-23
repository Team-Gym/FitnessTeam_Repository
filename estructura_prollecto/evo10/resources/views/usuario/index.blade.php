@extends('layouts.master')

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
						<th>sexo</th>
						<th>dob</th>
						<th>dias</th>
						<th>nivel</th>
						<th>modalidad</th>
						<th>usuario</th>
						<th>psw</th>
						<th>Opciones</th>
					</tr>

				@foreach($usuarios as $usuario)
					<tr>
						<td>{{$usuario['id']}}</td>
						<td>{{$usuario['nombre']}}</td>
						<td>{{$usuario['apellido']}}</td>
						<td>{{$usuario['sexo']}}</td>
						<td>{{$usuario['dob']}}</td>
						<td>{{$usuario['dias']}}</td>
						<td>{{$usuario['nivel']}}</td>
						<td>{{$usuario['modalidad']}}</td>
						<td>{{$usuario['usuario']}}</td>
						<td>{{$usuario['psw']}}</td>

						<td>




							<a href="{{route('usuario_editar', ['id' => $usuario['id']])}}" class="btn btn-default">Editar</a>
							<a href="{{route('usuario_rutina', ['id' => $usuario['id']])}}" class="btn btn-default">Ver rutinas
							<a href="{{route('usuario_eliminar', ['id' => $usuario['id']])}}" class="btn btn-danger"">Eliminar</a>

						</td>
					</tr>
				@endforeach



			</table>

		</div>
	</div>
</div>

@stop
