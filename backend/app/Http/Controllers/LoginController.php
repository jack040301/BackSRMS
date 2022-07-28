<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Admin;
use App\ProfessorAccount;
use App\Scholinfo;
use App\Manager;
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
        $information2 = User::where('email', $request->email)->limit(1)->count();
        $information3 = ProfessorAccount::where('email', $request->email)->limit(1)->count();
        $information4 = Manager::where('email', $request->email)->limit(1)->count();

     
        if($information === 0 && $information2 === 0 && $information3 === 0 && $information4 === 0) {
        $request->validate([
            'email' => 'required',
            'lastName' => 'required',
            'firstName' => 'required',
            'userNo' => 'required',
           

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

       try { 
        $request->validate([
            'email' => 'required',
            'lastName' => 'required',
            'firstName' => 'required',
            'userNo' => 'required', 
        ]); 

     
       
        $information = User::where('email', $request->email)->orwhere('student_number', $request->userNo)->limit(1)->count();
       
        $information2 = Admin::where('email', $request->email)->limit(1)->count();

        $information3 = ProfessorAccount::where('email', $request->email)->limit(1)->count();

        $information4 = Manager::where('email', $request->email)->limit(1)->count();


        if($information === 0 && $information2 === 0 && $information3 === 0 && $information4 === 0) {
       
       
       $name = $request->firstName . " ". $request->middleName . " ". $request->lastName;
    
         User::create([
          
            'email' =>$request->email,
            'student_number'=>$request->userNo,
            'name' => Str::upper($name),
            'user_role' =>'student',
            'password' => Hash::make($request->userNo)
            ]);  
        //    $srms_id =  $randomNumber = random_int(100000, 999999);

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

    } catch(\Illuminate\Database\QueryException $ex){ 
        return response()->json(['message'=>'The account already existing']);

    }
 

    }

    public function createProfessor(Request $request){


       try{
        $request->validate([
            'profEmail' => 'required',
            'profFN' => 'required',
            'profLN' => 'required',
            'profRank' => 'required',
        ]);


        $information = ProfessorAccount::where('email', $request->profEmail)->limit(1)->count();
       
     
        $information2 = Admin::where('email', $request->profEmail)->limit(1)->count();
       
       
        $information3 = User::where('email', $request->profEmail)->limit(1)->count();
       
        $information4 = Manager::where('email', $request->profEmail)->limit(1)->count();

     
       // ($request->getAttributes())->sendEmailVerificationNotification(),
       if($information === 0 && $information2 === 0 && $information3 === 0 && $information4 === 0) {
           
        $profPassword = Str::upper($request->profFN) . 'UCCescord@SRMS2020';
       
        ProfessorAccount::create([
            'email' =>$request->profEmail,
            'firstname' => Str::upper($request->profFN),
            'middleinitial' => Str::upper($request->profMI),
            'lastname' => Str::upper($request->profLN),
            'faculty_rank' => Str::upper($request->profRank),
            'user_role' =>'professor',
            'password' => Hash::make($profPassword)
            ]); 
     
 
        return response()->json(['message'=>'User Account Create Success']);
         }else{

        return response()->json(['message'=>'The account already existing']);

         }
        } catch(\Illuminate\Database\QueryException $ex){ 
            return response()->json(['message'=>'The account already existing']);
    
        }
         


    }

   

   
}
