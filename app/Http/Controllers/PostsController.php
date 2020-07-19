<?php

namespace App\Http\Controllers;
use App\Category;
use App\Post;
use App\Tag;
use Auth;
use Session;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::all();
        return view('admin.posts.index')->with('posts', $posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
          $tags = Tag::all();
        if($categories->count()==0 || $tags->count()==0){
            Session::flash('info', 'You must have some categories or tags before attemting to create a post');
             return redirect()->back();  
        }
        $tags = Tag::all();
        return view('admin.posts.create')->with('categories', $categories)
                                         -> with('tags', $tags);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        /*$post = new Post();
        $post->title = $request->title,
        $post->content = $request->content,
        $post->featured = $request->featured

        $post->save();
        return redirect()->back();*/

        $this -> validate($request,[
            'title' => 'required',
            'featured' => 'required|image',
            'content' => 'required',
            'tags' => 'required'
        ]);

        $featured = $request->featured;
        $featured_new_name = time().$featured->getClientOriginalName();
        $featured->move('uploads/posts/', $featured_new_name);

       $post = Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'featured' => 'uploads/posts/'.$featured_new_name,
            'user_id' => Auth::id(),
            'category_id' => $request->category_id,
            'slug' => str_slug($request->title)
        ]);
      

       $post->tags()->attach($request->tags);

       Session::flash('success', 'The post created successfully');
         
       return redirect()->back();
      
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $post = Post::find($id);
       return view('admin.posts.edit')->with('post', $post)
                                      ->with('categories', Category::all())
                                      ->with('tags', Tag::all());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'title'=>'required',
            'content' => 'required',
            'category_id' => 'required'
        ]);

        $post = Post::find($id);
        if($request->hasFile('featured')){
            $featured = $request->featured;
            $featured_new_name = time().$featured->getClientOriginalName();
            $featured->move('uploads/posts', $featured_new_name);
            $post->featured = 'uploads/posts/'.$featured_new_name;
        }

        $post->title = $request->title;
        $post->content = $request->content;
        $post->category_id = $request->category_id;

        $post->save();
        if($request->tags>0){
            $post->tags()->sync($request->tags);
        }else{
             $post->tags()->sync(array('0'));
        }
      
        Session::flash('success', 'Post updated successfully');
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $post -> delete();
        Session::flash('success', 'The post is deleted successfully');
        return redirect()->back();
    }

    public function trashed()
    {
        $posts = Post::onlyTrashed()->get();
        return view('admin.posts.trashed')->with('posts',$posts);

    }

     public function kill($id)
    {
        $post = Post::withTrashed()->where('id', $id)->first();
        $post->forceDelete();
        Session::flash('success', 'Post deleted parmanently');
        return redirect()->back();
    }

    public function restore($id){
        $post = Post::withTrashed()->where('id', $id)->first();
        $post->restore();
        Session::flash('success', 'Post restoted successfully');
        return redirect()->route('posts');
    }
}
