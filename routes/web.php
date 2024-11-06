<?php

use App\Http\Controllers\PostController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PostController::class, "index"]);


Route::prefix("/posts")->group(function(){
    
    Route::get("/{category}", [PostController::class, "getCategory"]);
    Route::get("/post/{post:slug}", [PostController::class, "find"] );

});

Route::get("/writers", [WriterController::class, "index"]);
Route::get("/writers/id{writer:id}", [WriterController::class, "getWriter"]);

Route::get("/about-us", function(){
    return view("pages.about", [
        "title" => "About EduFun"
    ]);
});

Route::get("/popular", [PostController::class, "getPopular"]);