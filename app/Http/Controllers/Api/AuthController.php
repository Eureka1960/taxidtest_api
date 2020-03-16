<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'first_name'            => 'required|min:2',
            'last_name'             => 'required|min:2',
            'email'                 => 'required|email|unique:users',
            'username'              => 'required|unique:users',
            'password'              => 'required|min:4'
        ]);

        $new_user = new User();
        $new_user->first_name = $request->first_name;
        $new_user->last_name = $request->last_name;
        // $new_user->middle_name = $request->middle_name;
        $new_user->gender = $request->gender;
        $new_user->username = $request->username;
        $new_user->email = $request->email;
        $new_user->phone_number = $request->phone_number;
        $new_user->password = bcrypt($request->password);

        return $new_user->save() ? response(['status' => 'success', 'message' => $request->first_name . 'a été ajouté avec succès !']) : response(['status' => 'error', 'message' => "Error survenue lors de l'enregistrement de l'utilisateur"]);

        // $http = new Client;

        // $response = $http->post(url("oauth/token"), [
        //     'form_params'   => [
        //         'grant_type'        => 'password',
        //         'client_id'         => '2',
        //         'client_secret'     => '$2y$10$zlXQMOJ8.JbN02Q81U9ylOADSlxWs4qZaggvMXtzAxQI8WMTfx/r2',
        //         'username'          => $request->email,
        //         'password'          => $request->password,
        //         'scope'             => ''
        //     ]
        // ]);

        // return response(['data' => json_decode((string) $response->getBody(), true)]);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email'         => 'required|email',
            'password'      => 'required'
        ]);

        $user = User::where('email', $request->email)->first();
        if (!$user)
            return response(['status' => 'error', 'message' => "L'utilisateur avec cette adresse n'est pas enregistré dans la base de donnéées"]);

        if (password_verify($request->password, $user->password))
            return $user;
        else
            return response(['status' => 'error', 'message' => 'Le mot de passe fournit ne correspond pas à cet adresse email : ' . $request->email]);
    }
}
