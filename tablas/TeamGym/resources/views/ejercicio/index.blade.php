@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>usuarios</h2>

			<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>grupomuscular</th>
						<th>ejercicio</th>
						<th>imagen</th>
						<th>explicacion</th>
						<th>tiempo</th>
						<th>material</th>
						<th>posicion</th>
						<th>consejo</th>
						<th>Opciones</th>
					</tr>
					@foreach($grupos as $grupo)
					<?php $nombreGrupo = $grupo['grupo'];?>
					@endforeach

				@foreach($ejercicio as $ejercicios)

										<tr>
						<td>{{$ejercicios['id']}}</td>
						<td>{{$nombreGrupo}}</td>
						<td>{{$ejercicios['ejercicios']}}</td>
						<td><img src="{{URL::asset('rutinas/'.$ejercicios->imagen)}}"></td>
						<td>{{$ejercicios['explicacion']}}</td>
						<td>{{$ejercicios['tiempo']}}</td>
						<td>{{$ejercicios['material']}}</td>
						<td>{{$ejercicios['posicion']}}</td>
						<td>{{$ejercicios['consejo']}}</td>
						<td>
							<a href="{{route('ejercicio_ejerciciomodalida', ['id' => $ejercicios['id']])}}" class="btn btn-default">Ver ejercicios de la modalidad
						</td>

				@endforeach

					</tr>




			</table>


		</div>
	</div>
</div>

@stop
