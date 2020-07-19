<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\Setting::create([
        	'site_name' =>"Laravel's Blog",
        	'contact_number' => '00256258423',
        	'contact_email'=>'info@laravel_blog.om',
            'address' => 'Dhak, Bangladesh'
		]);
    }
}
