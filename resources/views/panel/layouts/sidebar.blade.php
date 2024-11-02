  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'dashboard') collapsed @endif" href="{{ url('panel/dashboard') }}">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'user') collapsed @endif" href="{{ url('panel/user') }}">
          <i class="bi bi-person"></i>
          <span>User</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'role') collapsed @endif" href="{{ url('panel/role') }}">
          <i class="bi bi-question-circle"></i>
          <span>Role</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'category') collapsed @endif" href="{{ url('panel/category') }}">
          <i class="bi bi-view-list"></i>
          <span>Category</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'subcategory') collapsed @endif" href="{{ url('panel/subcategory') }}">
          <i class="bi bi-ui-checks-grid"></i>
          <span>Sub Category</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'product') collapsed @endif" href="{{ url('panel/product') }}">
          <i class="bi bi-archive"></i>
          <span>Product</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'setting') collapsed @endif" href="{{ url('panel/setting') }}">
          <i class="bi bi-gear"></i>
          <span>Setting</span>
        </a>
      </li>

    </ul>

  </aside><!-- End Sidebar-->
