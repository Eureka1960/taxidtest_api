<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Auth;
use Faker\Generator as Faker;

$factory->define(Auth::class, function (Faker $faker) {
    return [
        'fullname'      => $faker->firstName . ' '. $faker->lastName . ' ' . $faker->name,
        'email'         => $faker->safeEmail,
        'username'      => $faker->userName,
        'phone'         => $faker->phoneNumber,
        'address'       => $faker->address,
        'password'      => bcrypt('Cisco123456')
    ];
});
