<?php

use Illuminate\Database\Seeder;
use App\Models\Auth;

class AuthTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Auth::class, 50)->create();
    }
}
