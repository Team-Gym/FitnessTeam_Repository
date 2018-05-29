<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EjercicioModalidad extends Model
{
    protected $fillable = ['ejercicio_id', 'modalidad_id'];

    public function modalidad()
    {
        return $this->BelongsTo('App\modalidad', 'modalidad_id');
    }
    public function ejercicio()
    {
        return $this->BelongsTo('App\ejercicio', 'ejercicio_id');
    }
}
