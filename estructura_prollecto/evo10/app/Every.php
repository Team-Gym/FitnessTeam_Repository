<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Every extends Model
{
    protected $fillable = ['nombre', 'rutina_id'];

    public function rutina()
    {
        return $this->BelongsTo('App\rutina', 'rutina_id');
    }

}
