@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Editar rutina</h2>

			<table class="table table-striped">
					<tr>
						<th>ejercicio1_id</th>
						<th>ejercicio2_id</th>
						<th>ejercicio3_id</th>
						<th>ejercicio4_id</th>
						<th>ejercicio5_id</th>
						<th>ejercicio6_id</th>
						<th>ejercicio7_id</th>
						<th>ejercicio8_id</th>
						<th>ejercicio9_id</th>
						<th>ejercicio10_id</th>
						<th>Opciones</th>
					</tr>

					<tr>
					<form method="post">

						{{csrf_field()}}
						<td><input type="text" name="ejercicio1_id" value="{{ $rutina['ejercicio1_id']}}"></td>
						<td><input type="text" name="ejercicio2_id" value="{{ $rutina['ejercicio2_id']}}"></td>
						<td><input type="text" name="ejercicio3_id" value="{{ $rutina['ejercicio3_id']}}"></td>
						<td><input type="text" name="ejercicio4_id" value="{{ $rutina['ejercicio4_id']}}"></td>
						<td><input type="text" name="ejercicio5_id" value="{{ $rutina['ejercicio5_id']}}"></td>
						<td><input type="text" name="ejercicio6_id" value="{{ $rutina['ejercicio6_id']}}"></td>
						<td><input type="text" name="ejercicio7_id" value="{{ $rutina['ejercicio7_id']}}"></td>
						<td><input type="text" name="ejercicio8_id" value="{{ $rutina['ejercicio8_id']}}"></td>
						<td><input type="text" name="ejercicio9_id" value="{{ $rutina['ejercicio9_id']}}"></td>
						<td><input type="text" name="ejercicio10_id" value="{{ $rutina['ejercicio10_id']}}"></td>
						<td><input value="editar" class="btn btn-default" type="submit"></td>
					</form>
					</tr>
			</table>
		</div>
	</div>
</div>

@stop
