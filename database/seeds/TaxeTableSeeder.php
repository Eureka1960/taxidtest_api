<?php

use App\Models\Taxe;
use Illuminate\Database\Seeder;

class TaxeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $taxe_moto = new Taxe();
        $taxe_moto->name = "Moto";
        $taxe_moto->fee = 2500;
        $taxe_moto->save();

        $taxe_vehicule = new Taxe();
        $taxe_vehicule->name = "Voiture";
        $taxe_vehicule->fee = 3500;
        $taxe_vehicule->save();

        $taxe_shop = new Taxe();
        $taxe_shop->name = "Shop";
        $taxe_shop->fee = 1800;
        $taxe_shop->save();
    }
}
