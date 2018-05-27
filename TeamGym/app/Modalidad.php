<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Modalidad extends Model
{
    protected $fillable = ['nombre'];

    public function entreno()
    {
        return $this->hasMany('App\entreno', 'modalidad_id');
    }
    public function EjercicioModalidad()
    {
        return $this->hasMany('App\ejerciciomodalidad', 'modalidad_id');
    }

}
