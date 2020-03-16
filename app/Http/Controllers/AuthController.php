<?php

namespace App\Http\Controllers;

use App\Models\Auth;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function index()
    {
        return Auth::all();
    }

    public function show(Auth $auth)
    {
        return $auth;
    }

    private function localValidation($request)
    {
        $request->validate([
            'fullname'      => 'required|min:5',
            'email'         => 'required|email',
            'username'      => 'required|min:3',
            'phone'         => 'required|alpha_num',
            'address'        => 'required|min:7',
            'password'      => 'required|min:6'
        ]);

        $new_auth = [
            'fullname'          => $request->fullname,
            'email'             => $request->email,
            'username'          => $request->username,
            'phone'             => $request->phone,
            'address'           => $request->address,
            'password'          => bcrypt($request->password)
        ];

        return $new_auth;
    }

    public function store(Request $request)
    {
        $cleanedAuth = $this->localValidation($request);
        $auth = Auth::create($cleanedAuth);

        return $auth;
    }

    public function update(Auth $auth, Request $request)
    {
        $auth->update($this->localValidation($request));
        return $auth;
    }

    public function delete(Auth $auth)
    {
        return $auth->delete() ? Auth::all() : false;
    }
}
