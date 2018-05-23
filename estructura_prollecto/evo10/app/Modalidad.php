<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Modalidad extends Model
{
    protected $fillable = ['modalidad', 'repeticiones', 'series', 'nivel', 'peso'];

    public function rutina()
    {
        return $this->hasMany('App\rutina', 'modalidad_id');
    }

}
