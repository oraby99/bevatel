<?php

namespace App\Repositories;

use App\Models\product;
use App\Repositories\BaseRepository;

class productRepository extends BaseRepository
{
    protected $fieldSearchable = [
        'name',
        'description',
        'price',
        'is_available',
        'image',
        'category_id'
    ];

    public function getFieldsSearchable(): array
    {
        return $this->fieldSearchable;
    }

    public function model(): string
    {
        return product::class;
    }
}
