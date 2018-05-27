@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6">

			<h2>Rutinas Personalizada</h2>

			<table class="table table-striped">
					<tr>


						<th>Login</th>

					</tr>


					<tr>
						<td>usuario:  {{$user}} </td>
					</tr>
					<tr>
						<td>id;  {{$id}} </td>
					</tr>
			</table>
		</div>
	</div>
</div>

@stop
