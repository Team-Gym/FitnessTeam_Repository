@extends('layouts.master')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
nota
			<h2>Notas de</h2>

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


				@foreach($ejercicio as $ejercicios)

										<tr>
						<td>{{$ejercicios['id']}}</td>
						<td>{{$grupo['grupo']}}</td>
						<td>{{$ejercicios['ejercicios']}}</td>
						<td><img src="{{URL::asset('rutinas/'.$ejercicios->imagen)}}"></td>
						<td>{{$ejercicios['explicacion']}}</td>
						<td>{{$ejercicios['tiempo']}}</td>
						<td>{{$ejercicios['material']}}</td>
						<td>{{$ejercicios['posicion']}}</td>
						<td>{{$ejercicios['consejo']}}</td>

				@endforeach
					@endforeach
					</tr>




			</table>

		</div>
	</div>
</div>

@stop
