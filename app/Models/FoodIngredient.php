<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FoodIngredient extends Model
{
    use HasFactory;

    protected $table = "food_ingredients";

    protected $fillable = ['food_id','ingredient_name','ingredient_quantity','ingredient_unit'];

}
