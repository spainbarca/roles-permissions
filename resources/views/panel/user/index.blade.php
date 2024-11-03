@extends('panel.layouts.app')

@section('content')
<div class="pagetitle">
    <h1>User</h1>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">

      <div class="col-lg-12">
        @include('panel._message')

        <div class="card">

          <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <h5 class="card-title">User List</h5>
                </div>
                <div class="col-md-6" style="text-align: right">
                    <a href="{{ url('panel/user/create') }}" class="btn btn-primary" style="margin-top: 10px">Add</a>
                </div>
            </div>

            <!-- Table with stripped rows -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Role</th>
                  <th scope="col">Date</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach ($getRecord as $value)
                <tr>
                    <th scope="row">{{ $value->id }}</th>
                    <td>{{ $value->name }}</td>
                    <td>{{ $value->email }}</td>
                    <td>{{ $value->role_name }}</td>
                    <td>{{ $value->created_at }}</td>
                    <td>
                        <a href="{{ route('panel.user.edit', $value->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form action="{{ route('panel.user.destroy', $value->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this role?')">Delete</button>
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
