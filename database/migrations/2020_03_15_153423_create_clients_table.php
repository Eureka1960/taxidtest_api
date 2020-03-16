<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->string('client_mat')->nullable();
            $table->string('first_name');
            $table->string('last_name');
            $table->string('middle_name')->nullable();
            $table->string('avatar')->nullable();
            $table->enum('gender', ['F', 'M'])->default('F');
            $table->string('email')->nullable();
            $table->string('address');
            $table->string('phone_number')->nullable();
            $table->string('card_id')->nullable();
            $table->string('item_mat')->nullable();
            $table->enum('item_state', ['P', 'C'])->default('C');
            $table->string('description')->nullable();
            $table->foreignId('user_id')->default('10');
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
        Schema::dropIfExists('clients');
    }
}
