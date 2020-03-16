<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Transport;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(Transport::class, function (Faker $faker) {
    return [
        'first_name'        => $faker->firstName,
        'last_name'         => $faker->lastName,
        'middle_name'       => $faker->firstName,
        'email'             => $faker->email,
        'phone'             => $faker->phoneNumber,
        'address'           => $faker->address,
        'card_number_id'    => strtoupper(Str::random(12)),
        'chassis_number'    => strtoupper(Str::random(10))
    ];
});
