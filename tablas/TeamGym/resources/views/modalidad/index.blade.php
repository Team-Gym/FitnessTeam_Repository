@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>modalidads</h2>

			<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>nombre</th>
					</tr>

				@foreach($modalidads as $modalidad)
					<tr>
						<td>{{$modalidad['id']}}</td>
						<td>{{$modalidad['nombre']}}</td>


						<td>
							<a href="{{route('modalidad_entreno', ['id' => $modalidad['id']])}}" class="btn btn-default">Ver entrenos
							<a href="{{route('modalidad_ejerciciomodalida', ['id' => $modalidad['id']])}}" class="btn btn-default">Ver ejercicios de la modalidad
						</td>
					</tr>
				@endforeach



			</table>

		</div>
	</div>
</div>

@stop
