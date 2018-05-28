<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEjerciciosModalidadTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ejercicios_modalidad', function (Blueprint $table) {
            $table->integer('id_ejercicio')->unsigned();
            $table->integer('id_modalidad')->unsigned();

            $table->foreign('id_ejercicio')->references('id')->on('ejercicios')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('id_modalidad')->references('id')->on('modalidades')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->primary(['id_ejercicio', 'id_modalidad']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ejercicios_modalidad');
    }
}
