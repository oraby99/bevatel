<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreatecategoryAPIRequest;
use App\Http\Requests\API\UpdatecategoryAPIRequest;
use App\Models\category;
use App\Repositories\categoryRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;

/**
 * Class categoryAPIController
 */
class categoryAPIController extends AppBaseController
{
    private categoryRepository $categoryRepository;

    public function __construct(categoryRepository $categoryRepo)
    {
        $this->categoryRepository = $categoryRepo;
    }

    /**
     * Display a listing of the categories.
     * GET|HEAD /categories
     */
    public function index(Request $request): JsonResponse
    {
        $categories = $this->categoryRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse($categories->toArray(), 'Categories retrieved successfully');
    }

    /**
     * Store a newly created category in storage.
     * POST /categories
     */
    public function store(CreatecategoryAPIRequest $request): JsonResponse
    {
        $input = $request->all();

        $category = $this->categoryRepository->create($input);

        return $this->sendResponse($category->toArray(), 'Category saved successfully');
    }

    /**
     * Display the specified category.
     * GET|HEAD /categories/{id}
     */
    public function show($id): JsonResponse
    {
        /** @var category $category */
        $category = $this->categoryRepository->find($id);

        if (empty($category)) {
            return $this->sendError('Category not found');
        }

        return $this->sendResponse($category->toArray(), 'Category retrieved successfully');
    }

    /**
     * Update the specified category in storage.
     * PUT/PATCH /categories/{id}
     */
    public function update($id, UpdatecategoryAPIRequest $request): JsonResponse
    {
        $input = $request->all();

        /** @var category $category */
        $category = $this->categoryRepository->find($id);

        if (empty($category)) {
            return $this->sendError('Category not found');
        }

        $category = $this->categoryRepository->update($input, $id);

        return $this->sendResponse($category->toArray(), 'category updated successfully');
    }

    /**
     * Remove the specified category from storage.
     * DELETE /categories/{id}
     *
     * @throws \Exception
     */
    public function destroy($id): JsonResponse
    {
        /** @var category $category */
        $category = $this->categoryRepository->find($id);

        if (empty($category)) {
            return $this->sendError('Category not found');
        }

        $category->delete();

        return $this->sendSuccess('Category deleted successfully');
    }
}
