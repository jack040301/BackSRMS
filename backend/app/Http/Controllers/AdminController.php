<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Admin;
use App\User;
use App\Manager;
use App\ProfessorAccount;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\DB;


class AdminController extends Controller
{
    //
    //update of account ng admin

    public function updateAccountAdmin(Request $request, $id){
      

        $request->validate([
            'email' => 'required',
            'lastname' => 'required',
            'firstname' => 'required',
            'username' => 'required',
            'student_number' => 'required',
            'password' =>'required'
        ]);

       
       
    
     
  //      $input = $request->all();
        $admins = DB::table('admins')->where('id', $id)->limit(1)->update([
            'email' => $request->email,
            'lastname' => $request->lastname,
            'firstname' => $request->firstname,
            'username' => $request->username,
            'student_number' => $request->student_number,
            'password' =>Hash::make($request->password)

        ]);
    
        

         return response()->json(['message'=>'successfull update']);
            
            
    }

//update of account ng user
public function updateAccountUser(Request $request, $id){
      

    $request->validate([
        'email' => 'required',
        'lastname' => 'required',
        'firstname' => 'required',
        'student_number' => 'required',
    ]);

   
   
    $name = $request->firstname . " ". $request->lastname;
 
//      $input = $request->all();
    $user = DB::table('users')->where('id', $id)->limit(1)->update([
        'email' => $request->email,
        'name' => $name,
        'student_number' => $request->student_number,
        'password' =>Hash::make($request->password)

    ]);

    

     return response()->json(['message'=>'successfull update']);
        
        
}


//login function



    public function adminlogin(Request $request) {
        $request->validate([
            'userEmail' => 'required',
            'userPassword' => 'required',
            'device_name' => 'required',
        ]);
     
$user = ProfessorAccount::where('email', $request->userEmail)->first();

        if($user){
            if (! $user || ! Hash::check($request->userPassword, $user->password)) {
                throw ValidationException::withMessages([
                    'email' => ['Invalid Account Information.'],
                ]);
            } 
        }else{
          
            $user = Manager::where('email', $request->userEmail)->first();
    
          
            if (! $user || ! Hash::check($request->userPassword, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['Invalid Account Information.'],
            ]);
            

        }
            }

      return $user->createToken($request->device_name)->plainTextToken;


      
   
    
    
          
    }


    public function logout(Request $request){

        $request->user()->currentAccessToken()->delete();

        return response()->json([
           'message' => 'Successfully logged out'
        ]);
    }


    public function showadminaccount() {

        $admin = Admin::all();
        
        if(!$admin){
            return response()->json(['message'=>'couldnt get connect to the server']);
        }
        return response()->json($admin);
    }

    public function showuseraccount() {

        $user = User::all();

        if(!$user){
            return response()->json(['message'=>'couldnt get connect to the server']);
        }
        return response()->json($user);
    }
}
