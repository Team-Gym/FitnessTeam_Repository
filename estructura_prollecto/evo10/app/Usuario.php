<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    protected $fillable = ['nombre', 'apellido', 'sexo', 'dob', 'dias', 'nivel', 'modalidad', 'usuario', 'psw'];

    public function rutina()
    {
        return $this->hasMany('App\rutina', 'usuario_id');
    }

}
