<?php

namespace Database\Seeders;

use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create("id_ID");
        $speciality = ["Spesialis Interactive Multimedia" , "Spesialis Data Science", "Spesialis Network Security"];
        for($i = 0; $i < 3; $i++){

            Writer::create([
                "name" => $faker->name,
                "speciality" => $speciality[$i],
            ]);

        }

    }
}
