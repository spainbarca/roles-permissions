@extends('panel.layouts.app')

@section('content')
<div class="pagetitle">
    <h1>Role</h1>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">

      <div class="col-lg-12">
        @include('panel._message')

        <div class="card">

          <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <h5 class="card-title">Role List</h5>
                </div>
                <div class="col-md-6" style="text-align: right">
                    @if (!empty($PermissionAdd))
                        <a href="{{ url('panel/role/create') }}" class="btn btn-primary" style="margin-top: 10px">Add</a>
                    @endif
                </div>
            </div>

            <!-- Table with stripped rows -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name</th>
                  <th scope="col">Date</th>
                  @if (!empty($PermissionEdit) || !empty($PermissionDelete))
                  <th scope="col">Action</th>
                  @endif
                </tr>
              </thead>
              <tbody>
                @foreach ($getRecord as $value)
                <tr>
                    <th scope="row">{{ $value->id }}</th>
                    <td>{{ $value->name }}</td>
                    <td>{{ $value->created_at }}</td>
                    <td>
                        @if (!empty($PermissionEdit))
                        <a href="{{ route('panel.role.edit', $value->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        @endif
                        <form action="{{ route('panel.role.destroy', $value->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            @if (!empty($PermissionDelete))
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this role?')">Delete</button>
                            @endif
                        </form>
                    </td>
                  </tr>
                @endforeach
              </tbody>
            </table>
            <!-- End Table with stripped rows -->

          </div>
        </div>

      </div>
    </div>
  </section>

@endsection
