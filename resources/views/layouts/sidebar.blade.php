<div class="sidebar" data-color="purple" data-background-color="white" data-image="{{ asset('assets/img/sidebar-1.jpg') }}" >
    <div class="logo">
      <div class="brand">
        <img src="{{asset('assets/img/icon.png')}}" alt="logo">
    </div>
      <a href="http://www.creative-tim.com" class="simple-text logo-normal">
        Cari Franchise
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="{{'home' == request()->path() ? 'active' : ''}}">
          <a class="nav-link" href="{{ url('/home') }}">
            <i class="material-icons">dashboard</i>
            <p>Home</p>
          </a>
        </li>
        @guest
        @else
        <li class="{{'franchise' == request()->segment(1) ? 'active' : ''}}">
          <a class="nav-link" href="{{route('franchise.index')}}">
            <i class="material-icons">insert_chart</i>
            <p>Franchise</p>
          </a>
        </li>
        @if(Auth()->user()->role == "admin")
        <li class="nav-item {{'kriteria' == request()->segment(1) ? 'active' : ''}}">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="material-icons">language</i>
            Kriteria
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="{{route('kriteria')}}">Kriteria</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item " href="{{route('crip')}}">Nilai Kriteria</a>
        </div>
      </li>
        @endif
            @if(Auth()->user()->role == "customer")
            <li class="{{'alternatif' == request()->segment(1) ? 'active' : ''}}">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="material-icons">library_books</i>
                    Alternatif
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{route('alternatif')}}">Alternatif</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="{{route('nilai')}}">Nilai Alternatif</a>
                </div>
            </li>
            <li class="{{'perhitungan' == request()->path() ? 'active' : ''}}">
                <a class="nav-link" href="{{route('perhitungan')}}">
                  <i class="material-icons">content_paste</i>
                  <p>Perhitungan</p>
                </a>
              </li>
            @endif
        @endguest

        
      </ul>
    </div>

    