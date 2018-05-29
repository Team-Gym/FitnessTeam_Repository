@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
nota
			<h2>Notas de</h2>

			<table class="table table-striped">
					<tr>
						<th>ejercicio_id</th>
						<th>modalidad_id</th>
						<th>Opciones</th>
					</tr>
					@foreach($ejerciciomodalidad as $ejerciciomodalidads)
					<tr>
						<td>{{$ejerciciomodalidads['ejercicio_id']}}</td>
						<td>{{$ejerciciomodalidads['modalidad_id']}}</td>
					</tr>

					@endforeach


			</table>

		</div>
	</div>
</div>

@stop
