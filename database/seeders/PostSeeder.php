<?php

namespace Database\Seeders;

use App\Models\Post;

use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create("id_ID");
        $writers = Writer::all();
        $imgUrl = ["deep-learning.jpg", "machine-learning.jpg","nlp.jpg", "network-admin.jpg", "popular-network.jpg", "software-security.jpg"]; 
        $titles = ["Deep Learning", "Machine Learning", "Natural Language Processing", "Apa Iitu Network Security?", "Software Engineering", "User Experience"];
        for($i = 0; $i < 6; $i++){
            $title = $titles[$i];
            Post::create([
                "writer_id" => ($writers[$i % 3]->id),
                "title" => $title,
                "category" => $i < 3 ?  "Data Science" : "Network Security",
                "slug" => Str::slug($title),
                "body" => $faker->paragraph(50),
                "imgUrl" => $imgUrl[$i]
            ]);
        }
    }
}
