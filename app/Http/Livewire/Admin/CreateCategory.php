<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use App\Models\Category;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Storage;

class CreateCategory extends Component
{
    use WithFileUploads;

    public $brands, $categories, $category, $rand;

    protected $listeners = ['delete'];

    public $createForm = [
        'name' => null,
        'slug' => null,
        'icon' => null,
        'image' => null,
        'brands' => [],
    ];

    public $editForm = [
        'open' => false,
        'name' => null,
        'slug' => null,
        'icon' => null,
        'image' => null,
        'brands' => [],
    ];

    public $editImage;

    protected $rules = [
        'createForm.name' => 'required',
        'createForm.slug' => 'required|unique:categories,slug',
        'createForm.icon' => 'required',
        'createForm.image' => 'required|image|max:1024',
        'createForm.brands' => 'required',
    ];

    protected $validationAttributes = [
        'createForm.name' => 'nombre',
        'createForm.slug' => 'slug',
        'createForm.icon' => 'ícono',
        'createForm.image' => 'imagen',
        'createForm.brands' => 'marcas',
        'editForm.name' => 'nombre',
        'editForm.slug' => 'slug',
        'editForm.icon' => 'ícono',
        'editImage' => 'imagen',
        'editForm.brands' => 'marcas'
    ];

    public function mount()
    {
        if (auth()->user()->can('category.index')) {
            $this->getBrands();
            $this->getCategories();
            $this->rand = rand();
        } else {
            abort(403);
        }
    }

    public function updatedCreateFormName($value)
    {
        $this->createForm['slug'] = Str::slug($value);
    }

    public function updatedEditFormName($value)
    {
        $this->editForm['slug'] = Str::slug($value);
    }

    public function getBrands()
    {
        $this->brands = Brand::where('brand_status', '1')->get();
    }

    public function getCategories()
    {
        $this->categories = Category::where('category_status', '1')->get();
    }

    public function save()
    {
        if (auth()->user()->can('category.store')) {
            $this->validate();
            $image = $this->createForm['image']->store('public/categories');
                $category = Category::create([
                'name' => $this->createForm['name'],
                'slug' => $this->createForm['slug'],
                'icon' => $this->createForm['icon'],
                'image' => $image
            ]);

            $category->brands()->attach($this->createForm['brands']);

            $this->rand = rand();
            $this->reset('createForm');

            $this->getCategories();
            $this->emit('saved');
        } else {
            abort(403);
        }
    }

    public function edit(Category $category)
    {
        $this->reset(['editImage']);
        $this->resetValidation();
        $this->category = $category;
        $this->editForm['open'] = true;
        $this->editForm['name'] = $category->name;
        $this->editForm['slug'] = $category->slug;
        $this->editForm['icon'] = $category->icon;
        $this->editForm['image'] = $category->image;
        $this->editForm['brands'] = $category->brands->pluck('id');
    }

    public function update()
    {
        if (auth()->user()->can('category.update')) {
            $rules = [
                'editForm.name' => 'required',
                'editForm.slug' => 'required|unique:categories,slug,' . $this->category->id,
                'editForm.icon' => 'required',
                'editForm.brands' => 'required',
            ];
            if ($this->editImage) {
                $rules['editImage'] = 'required|image|max:1024';
            }
            $this->validate($rules);
            if ($this->editImage) {
                Storage::delete($this->editForm['image']);
                $this->editForm['image'] = $this->editImage->store('public/categories');
            }
            $this->category->update($this->editForm);
            // $this->category->brands()->detach();
            // $this->category->brands()->attach($this->editForm['brands']);
            $this->category->brands()->sync($this->editForm['brands']);
            $this->reset(['editForm', 'editImage']);
            $this->getCategories();
        } else {
            abort(403);
        }
    }

    public function delete(Category $category)
    {
        if (auth()->user()->can('category.delete')) {
            $category->update(['category_status' => '0']);
            // $category->delete();
            $this->getCategories();
        } else {
            abort(403);
        }
    }
    public function render()
    {
        return view('livewire.admin.create-category');
    }
}
