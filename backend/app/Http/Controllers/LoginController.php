<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Admin;
use App\ProfessorAccount;
use App\Scholinfo;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Illuminate\Validation\ValidationException;


class LoginController extends Controller
{
    //

    public function login(Request $request) {
        $request->validate([
            'userStudNum' => 'required',
            'userPassword' => 'required',
            'device_name' => 'required',
        ]);
     
        $user = User::where('student_number', $request->userStudNum)->first();
     
        if($user){
        if (! $user || ! Hash::check($request->userPassword, $user->password)) {
            throw ValidationException::withMessages([
                'userStudNum' => ['Invalid Faculty Number or Password.'],
            ]);
        }
    }else{

        $user = Admin::where('student_number', $request->userStudNum)->first();

        if (! $user || ! Hash::check($request->userPassword, $user->password)) {
            throw ValidationException::withMessages([
                'userStudNum' => ['Invalid Account Information.'],
            ]);
        } 
    }
        
      return $user->createToken($request->device_name)->plainTextToken;
    
   
          
    }

    public function createaccountAdmin(Request $request){
     
        try { 
        $staffusername = 101 . $request->userNo;

        $information = Admin::where('email', $request->email)->where('student_number', $staffusername)->limit(1)->count();
     
        if($information === 0) {
        $request->validate([
            'email' => 'required',
            'lastName' => 'required',
            'firstName' => 'required',
            'userNo' => 'required',
            'middleName'=> 'required',

        ]);

     //   $all = $request->all();
        
     $staffusername = 101 . $request->userNo;
      
       
        Admin::create([
            'email' =>$request->email,
            'student_number'=>$staffusername,
            'lastname' =>Str::upper($request->lastName),
            'firstname' => Str::upper($request->firstName),
            'middlename' => Str::upper($request->middleName),
            'user_role' =>'staff',
            'password' => Hash::make($request->userNo)
            ]);

            return response()->json(['message'=>'User Account Create Success']);

        }else{
     
            return response()->json(['message'=>'The account already existing']);
     
        }
    } catch(\Illuminate\Database\QueryException $ex){ 
        return response()->json(['message'=>'The account already existing']);

    }
    }

    public function createaccountStudent(Request $request){

        $request->validate([
            'email' => 'required',
            'lastName' => 'required',
            'firstName' => 'required',
            'userNo' => 'required', 
        ]); 

     
       
        $information = User::where('email', $request->email)->orwhere('student_number', $request->userNo)->limit(1)->count();



        if($information === 0) {
       
       
       $name = $request->firstName . " ". $request->middleName . " ". $request->lastName;
    
         User::create([
          
            'email' =>$request->email,
            'student_number'=>$request->userNo,
            'name' => Str::upper($name),
            'user_role' =>'student',
            'password' => Hash::make($request->userNo)
            ]);  


        $srms_id = Str::uuid()->getHex();

         Scholinfo::create([
                'srms_id'=>$srms_id,
                'student_number'=>$request->userNo,
                'firstname' => Str::upper($request->firstName),
                'middlename'=> Str::upper($request->middleName),
                'surname' => Str::upper($request->lastName),
                'course'=> Str::upper($request->course),
                'section'=>Str::upper($request->section)
            ]);

            
            return response()->json(['message'=>'Account Succesfully Created']);

        }else{

            return response()->json(['message'=>'The account already existing']);

        }
     
 

    }

    public function createProfessor(Request $request){


        $request->validate([
            'profEmail' => 'required',
            'profFN' => 'required',
            'profMI' => 'required',
            'profLN' => 'required',
            'profRank' => 'required',
            'profPassword' => 'required',
            'profPasswordConfirm' => 'required|same:profPassword|',
        ]);

        $information = ProfessorAccount::where('email', $request->profEmail)->limit(1)->count();

     
       // ($request->getAttributes())->sendEmailVerificationNotification(),
       if($information === 0) {
       
        ProfessorAccount::create([
            'email' =>$request->profEmail,
            'firstname' => Str::upper($request->profFN),
            'middleinitial' => Str::upper($request->profMI),
            'lastname' => Str::upper($request->profLN),
            'faculty_rank' => Str::upper($request->profRank),
            'user_role' =>'professor',
            'password' => Hash::make($request->profPassword)
            ]); 
     
 
        return response()->json(['message'=>'User Account Create Success']);
         }else{

        return response()->json(['message'=>'The account already existing']);

         }


    }

   

   
}
