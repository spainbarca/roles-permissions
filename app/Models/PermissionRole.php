<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PermissionRole extends Model
{
    use HasFactory;

    protected $table = 'permission_role';

    static public function InsertUpdateRecord($permissions_id, $role_id){
        PermissionRole::where('role_id', '=', $role_id)->delete();
        foreach ($permissions_id as $permission_id) {
            $save = new PermissionRole();
            $save->permission_id = $permission_id;
            $save->role_id = $role_id;
            $save->save();
        }
    }

    static public function getRolePermission($role_id){
        return PermissionRole::where('role_id', '=', $role_id)->get();
    }

    static public function getPermission($slug, $role_id){
        return PermissionRole::select('permission_role.id')
            ->join('permission', 'permission.id','=','permission_role.permission_id')
            ->where('permission_role.role_id', '=', $role_id)
            ->where('permission.slug', '=', $slug)
            ->count();
    }
}
