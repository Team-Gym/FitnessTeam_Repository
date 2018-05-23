<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRutinaSemanalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rutina_semanal', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_usuario')->unsigned();
            $table->integer('id_entreno')->unsigned();
            $table->string('lunes');
            $table->string('martes');
            $table->string('miercoles');
            $table->string('jueves');
            $table->string('viernes');
            $table->string('sabado');
            $table->string('domingo');

            $table->foreign('id_usuario')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('id_entreno')->references('id')->on('entrenos')
                ->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('rutina_semanal');
    }
}
