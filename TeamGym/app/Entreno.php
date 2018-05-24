<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entreno extends Model
{
    protected $fillable = [
        'id_modalidad', 'repeticiones', 'serie','nivel','peso',
    ];
}
