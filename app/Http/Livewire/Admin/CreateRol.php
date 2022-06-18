<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class CreateRol extends Component
{
    public $privileges, $roles, $role;

    public $createForm = [
        'name' => null,
        'privileges' => [],
    ];

    protected $rules = [
        'createForm.name' => 'required|unique:roles,name|regex:/^[a-zA-z ]{4,30}$/',
        'createForm.privileges' => 'required',
    ];

    protected $validationAttributes = [
        'createForm.name' => 'nombre',
        'createForm.privileges' => 'privilegios',
    ];

    public function mount()
    {
        $this->getPrivileges();
        $this->getRoles();
    }

    public function getPrivileges()
    {
        $this->privileges = Permission::all();
    }

    public function getRoles()
    {
        $this->roles = Role::all();
    }

    public function save()
    {
        if (auth()->user()->can('rol.store')) {
            $this->validate();
            $role = Role::create(['name' => $this->createForm['name']]);

            $role->permissions()->sync($this->createForm['privileges']);
            $this->reset('createForm');

            $this->getRoles();
            $this->emit('saved');
        } else {
            abort(403);
        }

    }

    public function render()
    {
        return view('livewire.admin.create-rol');
    }
}
