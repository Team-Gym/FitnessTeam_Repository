<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRutinasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rutinas', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('modalidad_id');
            $table->integer('usuario_id');
            $table->integer('ejercicio_id');
            $table->integer('ejercicio1');
            $table->integer('ejercicio2');
            $table->integer('ejercicio3');
            $table->integer('ejercicio4');
            $table->integer('ejercicio5');
            $table->integer('ejercicio6');
            $table->integer('ejercicio7');
            $table->integer('ejercicio8');
            $table->integer('ejercicio9');
            $table->integer('ejercicio10');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rutinas');
    }
}
