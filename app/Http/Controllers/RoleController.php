<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['getRecord'] = Role::getRecord();
        return view('panel.role.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('panel.role.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $save = new Role();
        $save->name = $request->name;
        $save->save();

        return redirect('panel/role')->with('success', 'Role Successfully created');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $data['getRecord'] = Role::getSingle($id);
        return view('panel.role.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $save = Role::getSingle($id);
        $save->name = $request->name;
        $save->save();

        return redirect('panel/role')->with('success', 'Role Successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $save = Role::getSingle($id);
        $save->delete();

        return redirect('panel/role')->with('success', 'Role Successfully deleted');
    }
}
