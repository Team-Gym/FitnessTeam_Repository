<?php use App\Equipo; ?>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Nombre:</strong>
            {!! Form::text('nombre', null, array('placeholder' => 'Nombre','class' => 'form-control')) !!}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Edad:</strong>
            {!! Form::number('edad', null, array('placeholder' => 'Edad','class' => 'form-control')) !!}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <?php $equipo = Equipo::all(); ?>
        <strong>Equipo:</strong>
        <select name="id_equipo" class="form-control">
            @foreach($equipo as $equipos)
                <option value="{{$equipos->id}}">{{$equipos->nombre}}</option>
            @endforeach
        </select>

    </div>
</div>
    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>