<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Assujetti;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(Assujetti::class, function (Faker $faker) {
    return [
        'name'              => $faker->company,
        'rccm'              => strtoupper(Str::random(8)),
        'id_nat'            => strtoupper(Str::random(4)),
        'tax_number'        => strtoupper(Str::random(6)),
        'address'           => $faker->streetAddress
    ];
});
