<?php

use App\Models\Assujetti;
use Illuminate\Database\Seeder;

class AssujettiTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Assujetti::class, 200)->create();
    }
}
