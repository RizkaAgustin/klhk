<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name'  => 'Abdurrahman Ramadhan',
            'email' => 'abdmandhan@gmail.com',
            'password'  => Hash::make('12341234'),
        ]);
    }
}
