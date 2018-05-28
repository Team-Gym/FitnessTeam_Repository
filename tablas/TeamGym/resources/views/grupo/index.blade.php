@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>grupos</h2>

			<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>Grupo</th>
						<th>ejercicio</th>
					</tr>

				@foreach($grupos as $grupo)
					<tr>
						<td>{{$grupo['id']}}</td>
						<td>{{$grupo['grupo']}}</td>


						<td>
							<a href="{{route('grupo_editar', ['id' => $grupo['id']])}}" class="btn btn-default">Editar</a>

							<a href="{{route('grupo_ejercicio', ['id' => $grupo['id']])}}" class="btn btn-default">Ver ejercicios por grupo

							<a href="{{route('grupo_eliminar', ['id' => $grupo['id']])}}" class="btn btn-danger">Eliminar</a>

						</td>
					</tr>
				@endforeach



			</table>

		</div>
	</div>
</div>

@stop
