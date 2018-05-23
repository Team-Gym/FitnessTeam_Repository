@extends('layouts.master')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Editar rutina</h2>

			<table class="table table-striped">
					<tr>
						<th>nombre</th>
						<th>modalidad_id</th>
						<th>usuario_id</th>
						<th>ejercicio_id</th>
						<th>ejercicio1</th>
						<th>ejercicio2</th>
						<th>ejercicio3</th>
						<th>ejercicio4</th>
						<th>ejercicio5</th>
						<th>ejercicio6</th>
						<th>ejercicio7</th>
						<th>ejercicio8</th>
						<th>ejercicio9</th>
						<th>ejercicio10</th>
						<th>editar</th>
					</tr>

					<tr>
					<form method="post">

						{{csrf_field()}}
						<td><input type="text" name="nombre" value="{{ $rutina['nombre']}}"></td>
						<td><input type="text" name="modalidad_id" value="{{ $rutina['modalidad_id']}}"></td>
						<td><input type="text" name="rutina_id" value="{{ $rutina['rutina_id']}}"></td>
						<td><input type="text" name="ejercicio_id" value="{{ $rutina['ejercicio_id']}}"></td>
						<td><input type="text" name="ejercicio1" value="{{ $rutina['ejercicio1']}}"></td>
						<td><input type="text" name="ejercicio2" value="{{ $rutina['ejercicio2']}}"></td>
						<td><input type="text" name="ejercicio3" value="{{ $rutina['ejercicio3']}}"></td>
						<td><input type="text" name="ejercicio4" value="{{ $rutina['ejercicio4']}}"></td>
						<td><input type="text" name="ejercicio5" value="{{ $rutina['ejercicio5']}}"></td>
						<td><input type="text" name="ejercicio6" value="{{ $rutina['ejercicio6']}}"></td>
						<td><input type="text" name="ejercicio7" value="{{ $rutina['ejercicio7']}}"></td>
						<td><input type="text" name="ejercicio8" value="{{ $rutina['ejercicio8']}}"></td>
						<td><input type="text" name="ejercicio9" value="{{ $rutina['ejercicio9']}}"></td>
						<td><input type="text" name="ejercicio10" value="{{ $rutina['ejercicio10']}}"></td>
						<td>
							<input value="Editar" class="btn btn-default" type="submit">
					</form>

						</td>
					</tr>


			</table>

		</div>
	</div>
</div>

@stop
