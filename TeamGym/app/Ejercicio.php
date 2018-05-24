<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ejercicio extends Model
{
    protected $fillable = [
        'id_grupo', 'ejercicio', 'imagen','explicacion','tiempo','material','posicion','consejo',
    ];
}
