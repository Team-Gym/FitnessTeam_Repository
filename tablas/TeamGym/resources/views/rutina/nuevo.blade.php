@extends('layouts.app')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Agregar Rutina</h2>

			<form method="post">
					{{csrf_field()}}


					<div class="form-group">

				    <label for="ejercicio1_id" >ejercicio1_id</label>

				    <select name="ejercicio1_id" id="ejercicio1_id" class="form-control" value="{{Input::old('ejercicio1_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio2_id" >ejercicio2_id</label>

				    <select name="ejercicio2_id" id="ejercicio2_id" class="form-control" value="{{Input::old('ejercicio2_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio3_id" >ejercicio3_id</label>

				    <select name="ejercicio3_id" id="ejercicio3_id" class="form-control" value="{{Input::old('ejercicio3_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio4_id" >ejercicio4_id</label>

				    <select name="ejercicio4_id" id="ejercicio4_id" class="form-control" value="{{Input::old('ejercicio4_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio5_id" >ejercicio5_id</label>

				    <select name="ejercicio5_id" id="ejercicio5_id" class="form-control" value="{{Input::old('ejercicio5_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio6_id" >ejercicio6_id</label>

				    <select name="ejercicio6_id" id="ejercicio6_id" class="form-control" value="{{Input::old('ejercicio6_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio7_id" >ejercicio7_id</label>

				    <select name="ejercicio7_id" id="ejercicio7_id" class="form-control" value="{{Input::old('ejercicio7_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio8_id" >ejercicio8_id</label>

				    <select name="ejercicio8_id" id="ejercicio8_id" class="form-control" value="{{Input::old('ejercicio8_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio9_id" >ejercicio9_id</label>

				    <select name="ejercicio9_id" id="ejercicio9_id" class="form-control" value="{{Input::old('ejercicio9_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio10_id" >ejercicio10_id</label>

				    <select name="ejercicio10_id" id="ejercicio10_id" class="form-control" value="{{Input::old('ejercicio10_id') }}">

				    			@foreach($ejercicios as $ejercicio)

					<option value="{{$ejercicio['id']}}" @if($ejercicio=='$ejercicio["id"]')selected @endif >{{$ejercicio['ejercicio']}}</option>
								@endforeach

					</select>

				  </div>


					 <input class="btn btn-default" type="submit" value="Enviar" />


				</form>

						</div>
					</div>
			</div>

@stop
