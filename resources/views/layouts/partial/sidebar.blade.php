<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
         <!--  <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->
        </div>
        <div class="pull-left info">
          <p>Topu</p>

        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
         <li>
          <a href="{{url('/dashbord')}}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <!-- only admin -->
        @if(Auth::user()->category==1)
  <li class="treeview">
    <li>
          <a href="{{url('admin/index')}}">
            <i class="fa fa-dashboard"></i> <span>All User</span>
          </a>
           </li>
         <li>
          <a href="{{url('dashbord/admin/subject/create')}}">
            <i class="fa fa-dashboard"></i> <span>Subject Add</span>
          </a>
           </li>
            <li>
          <a href="{{url('/admin/all-subject')}}">
            <i class="fa fa-dashboard"></i> <span> All Subject </span>
          </a>
          <a href="{{url('/admin/all-file')}}">
            <i class="fa fa-dashboard"></i> <span> All File </span>
          </a>
          <a href="{{url('/admin/all-image')}}">
            <i class="fa fa-dashboard"></i> <span> All Image </span>
          </a>
          <a href="{{url('/admin/all-video')}}">
            <i class="fa fa-dashboard"></i> <span> All Video </span>
          </a>
        </li>
        @endif


        <li>
          <a href="{{url('/dashbord/file')}}">
            <i class="fa fa-th"></i> <span>Contribution</span>
          </a>
        </li>

        <li>
          <a href="{{url('/dashbord/profile/edit',Auth::user()->id)}}">
            <i class="fa fa-th"></i> <span>Update Profile</span>
          </a>
        </li>


        <li class="header">LABELS</li>
        <li><a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><i class="fa fa-sign-out text-red"></i> <span> {{ __('Logout') }}</span></a>
                                                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form></li>




      </ul>
    </section>
      </aside>