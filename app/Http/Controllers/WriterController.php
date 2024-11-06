<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Writer;
use Illuminate\Http\Request;
use PHPUnit\Framework\MockObject\Stub\ReturnReference;
use Symfony\Component\CssSelector\Node\FunctionNode;

class WriterController extends Controller
{
    public function index(){
        return view("pages.writers",[
            "title" => "Writers",
            "img" => "prof-pict.png",
            "writers" => Writer::all()
        ]);
    }

    public function getWriter(Writer $writer){


        return view("pages.category",[

            "title" => $writer->name,
            "speciality" => $writer->speciality,
            "posts" => Post::where("writer_id", $writer->id)->get()

        ]);
    }
}
