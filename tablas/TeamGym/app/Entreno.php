<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entreno extends Model
{
    protected $fillable = [
        'modalidad_id', 'repeticiones', 'serie', 'nivel', 'peso',
    ];
    public function modalidad()
    {
        return $this->BelongsTo('App\modalidad', 'modalidad_id');
    }
}
