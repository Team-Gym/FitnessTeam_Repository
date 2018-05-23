@extends('layouts.master')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h2>Notas de</h2>
			<table class="table table-striped">
					<tr>
						<th>id</th>
						<th>nombre</th>
						<th>modalidad_id</th>
						<th>usuario_id</th>
						<th>ejercicio_id</th>
						<th>ejercicio1</th>
						<th>ejercicio2</th>
						<th>ejercicio3</th>
						<th>ejercicio4</th>
						<th>ejercicio5</th>
						<th>ejercicio6</th>
						<th>ejercicio7</th>
						<th>ejercicio8</th>
						<th>ejercicio9</th>
						<th>ejercicio10</th>
					</tr>
					@foreach($rutina as $rutinas)
					<tr>
						<td>{{$rutinas['id']}}</td>
					    <td>{{$rutinas['nombre']}}</td>
						<td>{{$rutinas['modalidad_id']}}</td>
						<td>{{$rutinas['usuario_id']}}</td>
						<td>{{$rutinas['ejercicio_id']}}</td>
						<td>{{$rutinas['ejercicio1']}}</td>
						<td>{{$rutinas['ejercicio2']}}</td>
						<td>{{$rutinas['ejercicio3']}}</td>
						<td>{{$rutinas['ejercicio4']}}</td>
						<td>{{$rutinas['ejercicio5']}}</td>
						<td>{{$rutinas['ejercicio6']}}</td>
						<td>{{$rutinas['ejercicio7']}}</td>
						<td>{{$rutinas['ejercicio8']}}</td>
						<td>{{$rutinas['ejercicio9']}}</td>
						<td>{{$rutinas['ejercicio10']}}</td>
						<td>
							<a href="{{route('rutina_editar', ['id' => $rutinas['id']])}}" class="btn btn-default">Editar</a>
							<a href="{{route('rutina_eliminar', ['id' => $rutinas['id']])}}" class="btn btn-danger"">Eliminar</a>
						</td>
					</tr>

					@endforeach


			</table>

		</div>
	</div>
</div>

@stop
