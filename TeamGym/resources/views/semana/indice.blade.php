extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">
nota
			<h2>Notas de</h2>

			<table class="table table-striped">
					<tr>
						<th>modalidad_id</th>
						<th>lunes</th>
						<th>martes</th>
						<th>miercoles</th>
						<th>jueves</th>
						<th>viernes</th>
						<th>sabado</th>
						<th>domingo</th>
						<th>repeticiones</th>
						<th>serie</th>
						<th>peso</th>
					</tr>
					@foreach($semana as $semanas)
					<tr>
						<td>{{$semanas['modalidad_id']}}</td>
						<td>{{$semanas['lunes']}}</td>
						<td>{{$semanas['martes']}}</td>
						<td>{{$semanas['miercoles']}}</td>
						<td>{{$semanas['jueves']}}</td>
						<td>{{$semanas['viernes']}}</td>
						<td>{{$semanas['sabado']}}</td>
						<td>{{$semanas['domingo']}}</td>
						<td>{{$semanas['repeticiones']}}</td>
						<td>{{$semanas['serie']}}</td>
						<td>{{$semanas['peso']}}</td>
					</tr>

					@endforeach


			</table>

		</div>
	</div>
</div>

@stop
