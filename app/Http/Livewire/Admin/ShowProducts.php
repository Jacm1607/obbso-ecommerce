<?php

namespace App\Http\Livewire\Admin;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;

class ShowProducts extends Component
{
    use WithPagination;

    public $search;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        if (auth()->user()->can('product.index')) {
            $wdg1 = Product::where('status', '1')->count();
            $wdg2 = Product::where('status', '2')->count();
            $wdg3 = Product::where('status', '0')->count();
            $products = Product::where('name', 'like', '%' . $this->search . '%')->orderBy('id', 'DESC')->paginate(10);
            return view('livewire.admin.show-products', compact('products'))->layout('layouts.admin2');

        } else {
            abort(403);
        }

    }
}
