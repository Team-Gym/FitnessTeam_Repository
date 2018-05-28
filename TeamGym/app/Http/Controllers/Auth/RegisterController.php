<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
     */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    // protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name'      => 'required|string|max:255',
            'apellido'  => 'required|string|max:255',
            'email'     => 'required|string|email|max:255|unique:users',
            'sexo'      => 'required|string|max:255',
            'dob'       => 'required|date|date_format:Y-m-d|after:yesterday',
            'password'  => 'required|string|min:6|confirmed',
            'modalidad' => 'required|string|max:255',
            'nivel'     => 'required|string|max:255',

        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name'      => $data['name'],
            'apellido'  => $data['apellido'],
            'email'     => $data['email'],
            'sexo'      => $data['sexo'],
            'dob'       => $data['dob'],
            'password'  => Hash::make($data['password']),
            'modalidad' => $data['modalidad'],
            'nivel'     => $data['nivel'],

        ]);
    }

}
