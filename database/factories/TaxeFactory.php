<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Taxe;
use Faker\Generator as Faker;

$factory->define(Taxe::class, function (Faker $faker) {
    return [
        'name'      => $faker->name,
        'fee'       => $faker->numberBetween(0, 1000000)
    ];
});
