<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    public $table = 'products';

    public $fillable = [
        'name',
        'description',
        'price',
        'is_available',
        'image',
        'category_id'
    ];

    protected $casts = [
        'name' => 'string',
        'description' => 'string',
        'price' => 'float',
        'is_available' => 'boolean',
        'image' => 'string'
    ];

    public static array $rules = [
        'name' => 'required|string|max:255',
        'description' => 'nullable|string|max:65535',
        'price' => 'required|numeric',
        'is_available' => 'required|boolean',
        'image' => 'nullable|string|max:255',
        'category_id' => 'required',
        'created_at' => 'nullable',
        'updated_at' => 'nullable'
    ];
    public function getCategoryNameAttribute()
    {
        return $this->category ? $this->category->name : null;
    }
    public function category(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(\App\Models\Category::class, 'category_id');
    }
}
