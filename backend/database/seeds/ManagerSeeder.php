<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ManagerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('managers')->insert([
            'firstname'=>'Superadmin',
            'middleinitial'=>'S',
            'lastname'=>'Manager',
            'email'=>'ucc.escord@gmail.com',
            'password'=>Hash::make('password123'),
            'user_role' => 'superadmin',]);
         
    
    }
}
