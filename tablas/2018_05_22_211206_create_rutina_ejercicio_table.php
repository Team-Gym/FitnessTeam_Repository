<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRutinaEjercicioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rutina_ejercicio', function (Blueprint $table) {
            $table->integer('id_rutina')->unsigned();
            $table->integer('id_ejercicio')->unsigned();

            $table->foreign('id_rutina')->references('id')->on('rutina_semanal')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('id_ejercicio')->references('id')->on('ejercicios')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->primary(['id_rutina', 'id_ejercicio']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rutina_ejercicio');
    }
}
