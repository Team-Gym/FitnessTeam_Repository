<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jugador extends Model
{
    public $table = "jugadores";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre', 'edad', 'id_equipo'
    ];
}
