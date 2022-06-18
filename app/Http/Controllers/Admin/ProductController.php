<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function files(Product $product, Request $request){
        if (auth()->user()->can('product.image-upload')) {
            $request->validate([
                'file' => 'required|image|max:2048'
            ]);
            $url = Storage::put('public/product', $request->file('file'));
            $product->images()->create([
                'url' => $url
            ]);
        } else {
            abort(403);
        }
    }
}
