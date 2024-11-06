<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = "posts";
    protected $fillable = [
        "writer_id",
        "title",
        "category",
        "slug",
        "body",
        "imgUrl"
    ];

    public function writer(){
        return $this->belongsTo(Writer::class);
    }
}
