<?php

namespace App\Http\Livewire;

use App\Models\Departament;
use App\Models\Municipality;
use App\Models\Province;
use Illuminate\Support\Facades\Session;
use Livewire\Component;

class FormOrder01 extends Component
{
    public $section_method_delivery = false;

    public $name, $lastname, $ci , $email, $cellphone, $razon_social, $nit, $cost_delivery = 0.00;

    public $departaments, $provinces = [], $municipalities = [],  $delivery_methods = [];

    public $departament_id="", $province_id="", $municipality_id="";

    protected $rules = [
        'name' => 'required|regex:/^[a-zA-ZñÑ ]{2,20}$/',
        'lastname' => 'required|regex:/^[a-zA-ZñÑ ]{2,20}$/',
        'ci' => 'required|regex:/^\d{6,15}$/',
        'email' => 'required|regex:/^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$/',
        'cellphone' => 'required|regex:/^\d{6,15}$/',
        'departament_id' => 'required',
        'province_id' => 'required',
        'municipality_id' => 'required'
    ];

    protected $messages = [
        'name.required' => 'El campo nombre es obligatorio.',
        'name.regex' => 'Solo se permite letras, mínimo 2 hasta 20 caractéres.',
        'lastname.required' => 'El campo apellido es obligatorio.',
        'lastname.regex' => 'Solo se permite letras, mínimo 2 hasta 20 caractéres.',
        'ci.required' => 'El campo ci es obligatorio.',
        'ci.regex' => 'Solo se permite números,mínimo 6 hasta 15 caractéres.',
        'email.required' => 'El campo correo es obligatorio.',
        'email.regex' => 'Formato incorrecto.',
        'cellphone.required' => 'El campo celular es obligatorio.',
        'cellphone.regex' => 'Solo se permite números,mínimo 6 hasta 15 caractéres.',
        'departament_id.required' => 'El campo departamento es obligatorio.',
        'province_id.required' => 'El campo provincia es obligatorio.',
        'municipality_id.required' => 'El campo municipio es obligatorio.',
        // 'email.email' => 'The Email Address format is not valid.',
    ];

    public function mount()
    {
        Session::forget('data_order');
        $this->departaments = Departament::all();
        $this->email = auth()->user()->email;
    }

    public function updatedDepartamentId( $value )
    {
        $this->provinces = Province::where('departament_id',$value)->get();
    }

    public function updatedProvinceId( $value )
    {
        $cost = Province::findOrFail($value);
        $this->cost_delivery = $cost->cost;
        $this->municipalities = Municipality::where('province_id',$value)->get();
    }

    public function create_order()
    {
        $rules = $this->rules;
        $this->validate($rules);
        $data_order = [
            'name' => strtoupper($this->name),
            'lastname' => strtoupper($this->lastname),
            'ci' => $this->ci,
            'email' => strtolower($this->email),
            'cellphone' => $this->cellphone,
            'departament_id' => intval($this->departament_id),
            'province_id' => intval($this->province_id),
            'municipality_id' => intval($this->municipality_id),
            'razon_social' => (!empty($this->razon_social)) ? strtoupper($this->razon_social) : strtoupper("$this->name $this->lastname"),
            'nit' => $this->nit ?? $this->ci,
            'cost_delivery' => $this->cost_delivery
        ];
        Session::put('data_order',$data_order);
        return redirect()->route('orders.registration');
    }
    public function render()
    {
        return view('livewire.form-order01');
    }
}
