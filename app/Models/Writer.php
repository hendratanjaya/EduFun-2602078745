<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Writer extends Model
{
   protected $table = "writers";
   public function posts(){
        return $this->hasMany(Post::class);
   }
}
