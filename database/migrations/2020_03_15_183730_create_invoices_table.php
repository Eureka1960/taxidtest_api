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
            $table->bigInteger('auth_id')->unsigned()->index()->nullable();
            $table->bigInteger('tax_id')->unsigned()->index()->nullable();
            $table->boolean('paid')->default(false);
            $table->timestamps();
        });

        Schema::table('invoices', function($table){
            $table->foreign('auth_id')->references('id')->on('auths');
            $table->foreign('tax_id')->references('id')->on('taxes');
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
