@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Editar rutina</h2>

			<table class="table table-striped">
					<tr>
						<th>modalidada_id</th>
						<th>repeticiones</th>
						<th>series</th>
						<th>nivel</th>
						<th>peso</th>
						<th>Opciones</th>
					</tr>

					<tr>
					<form method="post">

						{{csrf_field()}}
						<td><input type="text" name="modalidad_id" value="{{ $entreno['modalidad_id']}}"></td>
						<td><input type="text" name="repeticiones" value="{{ $entreno['repeticiones']}}"></td>
						<td><input type="text" name="series" value="{{ $entreno['series']}}"></td>
						<td><input type="text" name="nivel" value="{{ $entreno['nivel']}}"></td>
						<td><input type="text" name="peso" value="{{ $entreno['peso']}}"></td>
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
