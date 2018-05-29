@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h2>Notas de</h2>

			<table class="table table-striped">
					<tr>
						<th>ejercicio_id</th>
						<th>modlidad_id</th>
						<th>Opciones</th>
					</tr>

					@foreach($ejerciciomodalidad as $ejerciciomodalidads)
					@foreach($modalidad as $modalidads)
					@if($modalidads['id']==$ejerciciomodalidads['modalidad_id'])
					<?php $modalidadNombre = $modalidads['nombre'];?>
					@endif
					@endforeach
					<tr>
						<td><img src="{{URL::asset('rutinas/'.$ejercicios->imagen)}}"></td>
						<td>{{$modalidadNombre}}</td>
					</tr>

					@endforeach


			</table>

		</div>
	</div>
</div>

@stop
