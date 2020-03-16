<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Assujetti extends Model
{
    protected $fillable = [
        'name',
        'rccm',
        'id_nat',
        'tax_number',
        'address'
    ];
}
