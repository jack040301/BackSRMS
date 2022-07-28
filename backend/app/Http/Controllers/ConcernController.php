<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Concern;


class ConcernController extends Controller
{
    //

    public function insertConcern(Request $request){

        $validated = $request->validate([
       
            'senderMsg' => 'required',
            'senderEmail' => 'required|email',
            'senderName' => 'required',
          
        ]);

        Concern::create([
            'name' => $request->senderName,
            'email'=> $request->senderEmail,
            'message'=>$request->senderMsg
        ]);


    }

    public function showConcernInMIS(Request $request){
        $showconcern = DB::table('concern')->orderBy('created_at','desc')->when(request('search'), function($query) {
            $query->where('email', 'like', '%' . request('search') . '%')->orWhere('name', 'like', '%' . request('search') . '%')
            ->orWhere('message', 'like', '%' . request('search') . '%');
        })->paginate(10);


        return response()->json($showconcern);

    }

    public function repliedConcern(Request $request){
        $validated = $request->validate([
       
            'msgReplied' => 'required',
            'userEmail' => 'required|email',
          
        ]);
        

        $emailContent = $request->msgReplied;
        $sendMail = $request->userEmail;


        $email = new \SendGrid\Mail\Mail(); 
        $email->setFrom("ucc.escord@gmail.com", "UCC ESCORD FORGET PASSWORD CODE");
        $email->setSubject("ESCORD UCC CONCERN");
        $email->addTo($sendMail, '');
        $email->addContent("text/plain", "and easy to do anywhere, even with PHP");
        $email->addContent(
            "text/html",  $emailContent
        );
        $sendgrid = new \SendGrid(getenv('SENDGRID_API_KEY'));
        try {
            $response = $sendgrid->send($email);
            print $response->statusCode() . "\n";
            print_r($response->headers());
            print $response->body() . "\n";
        } catch (Exception $e) {
            echo 'Caught exception: '. $e->getMessage() ."\n";
        }    

    }
}
