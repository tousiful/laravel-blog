<?php

namespace App\Http\Controllers;
use App\Post;
use App\User;
use App\category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /* public function __construct()
    {
        $this->middleware('auth');
    } */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.dashboard')->with('posted_count', Post::all()->count())
                                      ->with('trashed_count', Post::onlyTrashed()->count())
                                      ->with('user_count', User::all()->count())
                                      ->with('category_count', category::all()->count());
    }
}
