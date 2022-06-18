<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subcategory;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Component;

use Illuminate\Support\Str;

class CreateProducts extends Component
{
    public $categories, $subcategories = [], $brands = [];
    public $category_id = "", $subcategory_id = "", $brand_id = "";
    public $name, $sku, $slug, $description, $price, $quantity, $offer_price;

    protected $rules = [
        'category_id' => 'required',
        'subcategory_id' => 'required',
        'name' => 'required|max:255|regex:/^[a-zA-z0-9\.\- \/]{4,200}$/',
        'sku' => 'required|max:255|regex:/^[a-zA-z0-9]{4,15}$/',
        'slug' => 'required|unique:products|max:255',
        'description' => 'required',
        'brand_id' => 'required',
        'price' => 'required|max:10|regex:/^[0-9]+([.][0-9]+)?$/',
        'offer_price' => 'max:10|regex:/^[0-9]+([.][0-9]+)?$/',
        'quantity' => 'required|max:11|regex:/^\d{1,6}$/'
    ];

    public function updatedCategoryId($value){
        $this->subcategories = Subcategory::where('category_id', $value)->where('subcategory_status', '1')->get();
        $this->brands = Brand::whereHas('categories', function(Builder $query) use ($value){
            $query->where('category_id', $value)->where('brand_status', '1');
        })->get();
        $this->reset(['subcategory_id', 'brand_id']);
    }

    public function updatedName($value){
        $this->slug = Str::slug($value);
    }

    public function getSubcategoryProperty(){
        return Subcategory::find($this->subcategory_id);
    }

    public function mount(){
        if (auth()->user()->can('product.create')) {
            $this->categories = Category::where('category_status', '1')->get();
        } else {
            abort('403');
        }
    }

    public function save(){
        if (auth()->user()->can('product.store')) {
            $rules = $this->rules;
            $this->validate($rules);
            $product = new Product();
            $product->name = $this->name;
            $product->sku = $this->sku;
            $product->slug = $this->slug;
            $product->description = $this->description;
            $product->price = $this->price;
            $product->offer_price = $this->offer_price ?? null;
            $product->subcategory_id = $this->subcategory_id;
            $product->brand_id = $this->brand_id;
            $product->quantity = $this->quantity;
            $product->save();
            return redirect()->route('admin.products.edit', $product);
        } else {
            abort(403);
        }

    }

    public function render()
    {
        return view('livewire.admin.create-products')->layout('layouts.admin2');
    }
}
