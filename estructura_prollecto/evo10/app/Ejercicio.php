<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ejercicio extends Model
{
    protected $fillable = ['grupomuscular', 'ejercicio', 'imagen', 'explicacion', 'tiempo', 'material', 'posicion', 'consejo'];

    public function rutina()
    {
        return $this->hasMany('App\rutina', 'ejercicio_id');
    }

}
