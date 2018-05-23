@extends('layouts.master')

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
				@foreach($usuarios as $usuario)

				@foreach($ejercicios as $ejercicio)
						<tr>
						<td>{{$ejercicio['id']}}</td>
						<td>{{$ejercicio['grupomuscular']}}</td>
						<td>{{$ejercicio['ejercicio']}}</td>
						<td><img src="{{URL::asset('rutinas/'.$ejercicio->ruta)}}"></td>
						<td>{{$ejercicio['ruta']}}</td>
						<td>{{$ejercicio['explicacion']}}</td>
						<td>{{$ejercicio['tiempo']}}</td>
						<td>{{$ejercicio['material']}}</td>
						<td>{{$ejercicio['posicion']}}</td>
						<td>{{$ejercicio['consejo']}}</td>
						<td>


							<a href="{{route('usuario_editar', ['id' => $usuario['id']])}}" class="btn btn-default">Editar</a>
							<a href="{{route('usuario_rutina', ['id' => $usuario['id']])}}" class="btn btn-default">Ver rutinas
							<a href="{{route('usuario_eliminar', ['id' => $usuario['id']])}}" class="btn btn-danger"">Eliminar</a>

				@endforeach
						</td>
					</tr>
				@endforeach



			</table>


		</div>
	</div>
</div>

@stop
