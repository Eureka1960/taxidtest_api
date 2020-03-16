<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transports', function (Blueprint $table) {
            $table->id();
            $table->string('first_name', 100);
            $table->string('last_name', 100);
            $table->string('middle_name', 100)->nullable();
            $table->text('avatar')->nullable();
            $table->enum('gender', ['F', 'M'])->default('M');
            $table->dateTime('birthday')->nullable();
            $table->string('email', 200)->nullable();
            $table->string('phone', 100)->nullable();
            $table->string('address');
            $table->string('card_number_id', 100);
            $table->string('chassis_number', 100);
            $table->string('texid_mat', 100)->nullable();
            $table->enum('transpot_type', ['M', 'V'])->default('M');
            $table->enum('conductor_state', ['C', 'P'])->default('C');
            $table->bigInteger('taxe_id')->unsigned()->index()->nullable();
            $table->enum('deleted', [0, 1])->default(0);
            $table->timestamps();
        });

        Schema::table('transports', function($table){
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
        Schema::dropIfExists('transports');
    }
}
