

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
        <li class="nav-item active">
          <a class="nav-link" href="{{ url('/home') }}">
            <i class="material-icons">dashboard</i>
            <p>Home</p>
          </a>
        </li>

        @guest
        @else
        @if(Auth()->user()->role == "admin")
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="material-icons">language</i>
            Kriteria
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="{{route('kriteria')}}">Kriteria</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="{{route('crip')}}">Nilai Kriteria</a>
        </div>
    </li>
        @endif
            @if(Auth()->user()->role == "customer")
            <li class="nav-item dropdown">
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
            <li class="nav-item">
                <a class="nav-link" href="{{route('perhitungan')}}">
                  <i class="material-icons">content_paste</i>
                  <p>Perhitungan</p>
                </a>
              </li>
            @endif
        @endguest

        
            
       
       
      </ul>
    </div>

    