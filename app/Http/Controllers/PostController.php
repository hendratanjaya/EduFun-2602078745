<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        return view("pages.home",[
            "title" => "Home",
            "img" => "landing-page-img.jpg",
            "posts" => Post::all()
        ]);
    }

    public function getCategory($category){

        return view("pages.category",[
            "title" =>  $category,
            "posts" => Post::where("category", $category)->get()

        ]);
    }
    public function find(Post $post){

        return view("pages.post", [
            
            "title" => $post->title,
            "post" => $post

        ]);
        
    }

    public function getPopular(){

        return view("pages.popular",[

            "title" => "Popular",
            "posts" => Post::paginate(3),

        ]);
    }
}
