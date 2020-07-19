<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user = App\User::create([
        	'name' => 'Tausif',
        	'email' => 'tausif@gmail.com',
        	'password'=> bcrypt('password'),
            'admin' => 1
		]);

       App\Profile::create([
            'user_id' => $user->id,
            'avatar' =>'uploads/avatars/1.jpg',
            'about' =>'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.',
            'facebook'=>'facebook.com',
            'youtube'=>'youtube.com'
       ]);

    }
}
