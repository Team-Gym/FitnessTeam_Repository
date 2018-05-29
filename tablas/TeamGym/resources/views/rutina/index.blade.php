@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h2>Ejercicios Rutina</h2>
			<table class="table table-striped">
					<tr>
						<th>ejercicio1_id</th>
						<th>ejercicio2_id</th>
						<th>ejercicio3_id</th>
						<th>ejercicio4_id</th>
						<th>ejercicio5_id</th>
						<th>ejercicio6_id</th>
						<th>ejercicio7_id</th>
						<th>ejercicio8_id</th>
						<th>ejercicio9_id</th>
						<th>ejercicio10_id</th>
						<th>Opciones</th>
					</tr>
					@foreach($rutinas as $rutina)
					<tr>
						<td>{{$rutina['ejercicio1_id']}}</td>
					    <td>{{$rutina['ejercicio2_id']}}</td>
						<td>{{$rutina['ejercicio3_id']}}</td>
						<td>{{$rutina['ejercicio4_id']}}</td>
						<td>{{$rutina['ejercicio5_id']}}</td>
						<td>{{$rutina['ejercicio6_id']}}</td>
						<td>{{$rutina['ejercicio7_id']}}</td>
						<td>{{$rutina['ejercicio8_id']}}</td>
						<td>{{$rutina['ejercicio9_id']}}</td>
						<td>{{$rutina['ejercicio10_id']}}</td>

						<td>
							<a href="{{route('rutina_editar', ['id' => $rutina['id']])}}" class="btn btn-default">Editar</a>
							<a href="{{route('rutina_eliminar', ['id' => $rutina['id']])}}" class="btn btn-danger">Eliminar</a>
						</td>
					</tr>

					@endforeach


			</table>

		</div>
	</div>
</div>

@stop
