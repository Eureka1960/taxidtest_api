<?php

use App\Models\Role;
use Illuminate\Database\Seeder;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Simple User
        $role_user = new Role();
        $role_user->name = "User";
        $role_user->description = "Un utilisateur simple, capable de voir les informations sans pouvoir y apporter les modifier quelconque";
        $role_user->save();

        //Editor User
        $role_editor = new Role();
        $role_editor->name = "Editor";
        $role_editor->description = "Un utilisateur editeur, capable de lire et ajouter les informations sans pouvoir les modifier ni les supprimer";
        $role_editor->save();

        //Admin User
        $role_admin = new Role();
        $role_admin->name = "Admin";
        $role_admin->description = "Un utilisateur administrateur, capable de voir, d'ajouter, modifier et supprimer. Donc il a tout les droits possible";
        $role_admin->save();
    }
}
