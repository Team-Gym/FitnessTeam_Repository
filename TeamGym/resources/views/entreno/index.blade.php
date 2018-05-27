@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
nota
			<h2>Notas de</h2>

			<table class="table table-striped">
					<tr>
						<th>modalidada_id</th>
						<th>modlidad</th>
						<th>repeticiones</th>
						<th>series</th>
						<th>nivel</th>
						<th>peso</th>
						<th>Opciones</th>
					</tr>
					@foreach($entreno as $entrenos)
					@foreach($modalidads as $modalidad)
					@if($modalidad['id']==$entrenos['modalidad_id'])
					<?php $modalidadNombre = $modalidad['nombre'];?>
					@endif
					@endforeach
					<tr>
						<td>{{$entrenos['id']}}</td>
						<td>{{$modalidadNombre}}</td>
						<td>{{$entrenos['repeticiones']}}</td>
						<td>{{$entrenos['serie']}}</td>
						<td>{{$entrenos['nivel']}}</td>
						<td>{{$entrenos['peso']}}</td>
						<td>
							<a href="{{route('entreno_editar', ['id' => $entrenos['id']])}}" class="btn btn-default">Editar</a>
						</td>
					</tr>

					@endforeach


			</table>

		</div>
	</div>
</div>

@stop
