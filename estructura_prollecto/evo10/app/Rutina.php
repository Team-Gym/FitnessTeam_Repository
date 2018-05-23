<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rutina extends Model
{

    protected $fillable = ['nombre', 'modalidad_id', 'usuario_id', 'ejercicio_id', 'ejercicio1', 'ejercicio2', 'ejercicio3', 'ejercicio4', 'ejercicio5', 'ejercicio6', 'ejercicio7', 'ejercicio8', 'ejercicio9', 'ejercicio10'];

    public function modalidad()
    {
        return $this->BelongsTo('App\modalidad', 'modalidad_id');
    }

    public function usuario()
    {
        return $this->BelongsTo('App\usuario', 'usuario_id');
    }

    public function ejercicio()
    {
        return $this->BelongsTo('App\ejercicio', 'ejercicio_id');
    }

}
