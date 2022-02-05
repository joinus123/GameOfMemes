<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\validator;

use App\Models\Login;
use App\Models\User;



class LoginController extends Controller
{
    public function login(Request $request){

        $rules =[
            'email' => 'required|max:255|unique:users,email',

        ];
        $validatedData = Validator::make($request->all(), $rules);
        if ($validatedData->fails()) {
            return response()->json(  $validatedData->errors(), 422);
         }
        // dd($request->all());

    User::create([
        'email'   =>$request->email,
        'password' =>Hash::make($request->password)
    ]);

    $credencial=[

        'email'    =>$request->email,
        'password' =>$request->password
     ];


    //  return check::attempt($credencial);
    if(Auth::attempt($credencial)){
        $msg ="Login Successfully";
        $status = 200;
     }
     else
     {
        $msg ="invalid credential";
        $status = 200;
     }
    return response()->json($msg,$status);

}






}
