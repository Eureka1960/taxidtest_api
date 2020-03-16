<?php

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //factory(User::class, 5)->create();

        $role_user = Role::where('name', 'User')->first();
        $role_editor = Role::where('name', 'Editor')->first();
        $role_admin = Role::where('name', 'Admin')->first();

        $user = new User();
        $user->first_name = "Jires";
        $user->last_name = "NZAJI";
        $user->middle_name = "NZAJI";
        $user->username = "newGlass";
        $user->gender = "M";
        $user->email = "jiresnzaji@gmail.com";
        $user->password = bcrypt("Cisco123456");
        $user->phone_number = "099929288383";
        $user->save();
        $user->roles()->attach($role_user);

        $editor = new User();
        $editor->first_name = "Huguette";
        $editor->last_name = "BUKASA";
        $editor->middle_name = "NZAJI";
        $editor->username = "Helena";
        $editor->gender = "F";
        $editor->email = "huguettebukasa@gmail.com";
        $editor->password = bcrypt("Cisco123456") ;
        $editor->phone_number = "0027783939928";
        $editor->save();
        $editor->roles()->attach($role_editor);

        $admin = new User();
        $admin->first_name = "Eric";
        $admin->last_name = "MEYI";
        $admin->middle_name = "NZAJI";
        $admin->username = "Eureka1960";
        $admin->gender = "M";
        $admin->email = "meyinzaji@gmail.com";
        $admin->password = bcrypt("Cisco123456");
        $admin->phone_number = "0912989689";
        $admin->save();
        $admin->roles()->attach($role_admin);
    }
}
