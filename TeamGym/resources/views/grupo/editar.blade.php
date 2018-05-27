@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Editar rutina</h2>

			<table class="table table-striped">
					<tr>
						<th>grupo</th>
						<th>editar</th>
					</tr>

					<tr>
					<form method="post">

						{{csrf_field()}}
						<td><input type="text" name="grupo" value="{{ $grupo['grupo']}}"></td>
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
