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
						<td>nombre:  {{$user['name']}} </td>
						<td>modalidad:  {{$user['modalidad']}} </td>
						<td>nivel:  {{$user['nivel']}} </td>
					</tr>
					<tr>
						<td>id:  {{$user['id']}} </td>
					</tr>
					<td>
						@foreach($entreno as $entrenos)
						<td>entreno:  {{$entrenos}} </td>
						@endforeach
					</tr>
			</table>
		</div>
	</div>
</div>

@stop
