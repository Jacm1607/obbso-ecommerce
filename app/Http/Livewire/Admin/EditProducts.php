<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Image;
use App\Models\Product;
use App\Models\Subcategory;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Component;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class EditProducts extends Component
{
    public $product, $categories, $subcategories, $brands, $slug;
    public $category_id;
    protected $rules = [
        'category_id' => 'required',
        'product.subcategory_id' => 'required',
        'product.name' => 'required|regex:/^[a-zA-z0-9\.\- \/]{4,200}$/',
        'product.sku' => 'required|regex:/^[a-zA-z0-9]{4,15}$/',
        'slug' => 'required|unique:products,slug',
        'product.description' => 'required',
        'product.brand_id' => 'required',
        'product.price' => 'required|regex:/^[0-9]+([.][0-9]+)?$/',
        'product.quantity' => 'required|numeric|regex:/^\d{1,6}$/',
    ];

    protected $listeners = ['refreshProduct', 'delete'];

    public function mount(Product $product){
        if (auth()->user()->can('product.edit')) {
            $this->product = $product;
            $this->categories = Category::all();
            $this->category_id = $product->subcategory->category->id;
            $this->subcategories = Subcategory::where('category_id', $this->category_id)->get();
            $this->slug = $this->product->slug;
            $this->brands = Brand::whereHas('categories', function(Builder $query){
                $query->where('category_id', $this->category_id);
            })->get();
        } else {
            abort(403);
        }
    }

    public function refreshProduct(){
        $this->product = $this->product->fresh();
    }

    public function updatedProductName($value){
        $this->slug = Str::slug($value);
    }

    public function updatedCategoryId($value){
        $this->subcategories = Subcategory::where('category_id', $value)->get();
        $this->brands = Brand::whereHas('categories', function(Builder $query) use ($value){
            $query->where('category_id', $value);
        })->get();

        /* $this->reset(['subcategory_id', 'brand_id']); */
        $this->product->subcategory_id = "";
        $this->product->brand_id = "";
    }

    public function getSubcategoryProperty(){
        return Subcategory::find($this->product->subcategory_id);
    }

    public function save(){
        if (auth()->user()->can('product.update')) {
            $rules = $this->rules;
            $rules['slug'] = 'required|unique:products,slug,' . $this->product->id;
            $this->validate($rules);
            $this->product->slug = $this->slug;
            $this->product->save();
            $this->emit('saved');
        } else {
            abort(403);
        }
    }

    public function deleteImage(Image $image){
        if (auth()->user()->can('product.image-delete')) {
            Storage::delete([$image->url]);
            $image->delete();
            $this->product = $this->product->fresh();
        } else {
            abort(403);
        }
    }

    // public function delete(){
    //     $images = $this->product->images;
    //     foreach ($images as $image) {
    //         Storage::delete($image->url);
    //         $image->delete();
    //     }

    //     $this->product->delete();
    //     return redirect()->route('admin.index');
    // }

    public function render()
    {
        return view('livewire.admin.edit-products')->layout('layouts.admin2');
    }
}
