<?php

namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

class RegisterController extends Controller
{

    public function registration(Request $request){

        // dd($request->all());
      $msg = [];
       $data=[
            'userID'         =>$request->userID?:"null",
            'userName'       =>$request->userName?:null,
            'email'          =>$request->email?:null,
            'country'        =>$request->country?:null,
            'platform'       =>$request->platform?:null,
            'authProvider'   =>$request->authProvider?:null,
            'Coins'          =>$request->Coins?:null,
            'score'          =>$request->score?:null,
            'Xp'             =>$request->Xp?:null,
            'level'          =>$request->level?:null,
            'gamePlayed'     =>$request->gamePlayed?:null,
            'gameWon'        =>$request->gameWon?:null,
            'winPercentage'  =>$request->winPercentage?:null,
            'career'         =>$request->career?:null,
            'isNewUser'      =>$request->isNewUser?:null,
            'remember_token'   => Str::random(32)?:null,
           ];
            //dd($request->image->extension());
            if($request->hasfile('image')){

               $imageName = time().'.'.$request->image->extension();
               $request->image->move(public_path('images'),$imageName);
               $data['image'] =$imageName;
            }

//dd($data);

//$data['isNewUser'] = $request->isNewUser;

        $UserID=User::where('userID',$request->userID)->get()->first();
        // dd($UserID);
        if($UserID){
            User::where('userID',$request->userID)->update($data);
            $msg= "User Update Successfully";
            $statuscode = 200;

        }else{

            User::create($data);
            $msg = "user insert successfully";
            $statuscode = 200;
            // $UserID=User::where('userID',$request->userID)->get()->first();
        }
        $UserID=User::where('userID',$request->userID)->get()->first();
           return response()->json($UserID, $statuscode);
        return json_decode($msg);
    }

}



