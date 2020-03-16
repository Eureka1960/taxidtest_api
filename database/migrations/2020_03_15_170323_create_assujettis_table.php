<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAssujettisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assujettis', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('rccm');
            $table->string('id_nat');
            $table->string('tax_number');
            $table->string('address');
            $table->string('texid_mat')->nullable();
            $table->bigInteger('taxe_id')->unsigned()->index()->nullable();
            $table->enum('deleted', [0, 1])->default(0);
            $table->timestamps();
        });

        Schema::table('assujettis', function($table){
            $table->foreign('taxe_id')->references('id')->on('taxes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('assujettis');
    }
}
