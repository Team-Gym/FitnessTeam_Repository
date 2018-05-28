<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Semana extends Model
{
    protected $fillable = ['usuario_id', 'lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo', 'repeticiones', 'serie', 'peso'];

    public function user()
    {
        return $this->BelongsTo('App\user', 'usuario_id');
    }
}
