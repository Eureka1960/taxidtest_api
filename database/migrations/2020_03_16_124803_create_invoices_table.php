<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('invoice_mat')->nullable();
            $table->bigInteger('user_id')->unsigned()->index()->nullable();
            $table->bigInteger('tax_id')->unsigned()->index()->nullable();
            $table->bigInteger('assujetti_id')->unsigned()->index()->nullable();
            $table->bigInteger('transport_id')->unsigned()->index()->nullable();
            $table->boolean('paid')->default(false);
            $table->timestamps();
        });

        Schema::table('invoices', function($table){
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('tax_id')->references('id')->on('taxes');
            $table->foreign('assujetti_id')->references('id')->on('assujettis');
            $table->foreign('transport_id')->references('id')->on('transports');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoices');
    }
}
