<?php

namespace App\Repositories;

use App\Models\category;
use App\Repositories\BaseRepository;

class categoryRepository extends BaseRepository
{
    protected $fieldSearchable = [
        'name',
        'description'
    ];

    public function getFieldsSearchable(): array
    {
        return $this->fieldSearchable;
    }

    public function model(): string
    {
        return category::class;
    }
}
