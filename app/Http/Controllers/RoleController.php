<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\Permission;
use App\Models\PermissionRole;
use Illuminate\Http\Request;
use Auth;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $PermissionRole = PermissionRole::getPermission('role', Auth::user()->role_id);

        if(empty($PermissionRole)){
            abort(403);
        }

        $data['PermissionAdd'] = PermissionRole::getPermission('add-role', Auth::user()->role_id);
        $data['PermissionEdit'] = PermissionRole::getPermission('edit-role', Auth::user()->role_id);
        $data['PermissionDelete'] = PermissionRole::getPermission('delete-role', Auth::user()->role_id);

        $data['getRecord'] = Role::getRecord();
        return view('panel.role.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $PermissionRole = PermissionRole::getPermission('add-role', Auth::user()->role_id);

        if(empty($PermissionRole)){
            abort(403);
        }

        $getPermission = Permission::getRecord();
        $data['getPermission'] =$getPermission;
        return view('panel.role.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $save = new Role();
        $save->name = $request->name;
        $save->save();

        PermissionRole::InsertUpdateRecord($request->permission_id, $save->id);

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
        $PermissionRole = PermissionRole::getPermission('edit-role', Auth::user()->role_id);

        if(empty($PermissionRole)){
            abort(403);
        }

        $data['getRecord'] = Role::getSingle($id);
        $data['getPermission'] = Permission::getRecord();
        $data['getRolePermission'] = PermissionRole::getRolePermission($id);
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

        PermissionRole::InsertUpdateRecord($request->permission_id, $save->id);

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
