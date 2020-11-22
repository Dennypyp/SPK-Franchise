<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>SPK Franchise</title>
      {{-- {{ config('app.name', 'SPK Franchise') }} --}}
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
        .form-inline > * {
            margin:5px 3px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="{{ asset('assets/css/material-dashboard.css?v=2.1.2') }}" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="{{ asset('assets/demo/demo.css') }}" rel="stylesheet" />
</head>
<body>
    <div id="app">
{{-- askdjklsadkl --}}
<div class="sidebar" data-color="purple" data-background-color="white" data-image="{{ asset('assets/img/sidebar-1.jpg') }}" >
    <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
        Cari Franchise
      </a></div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="{{ url('/home') }}">
            <i class="material-icons">dashboard</i>
            <p>Home</p>
          </a>
        </li>
        {{-- <li class="nav-item ">
          <a class="nav-link" href="{{route('alternatif')}}">
            <i class="material-icons">person</i>
            <p>Alternatif</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./tables.html">
            <i class="material-icons">content_paste</i>
            <p>Table List</p>
          </a>
        </li> --}}

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
            <li class="nav-item ">
                <a class="nav-link" href="{{route('perhitungan')}}">
                  <i class="material-icons">content_paste</i>
                  <p>Perhitungan</p>
                </a>
              </li>
            @endif
        @endguest

        
            
        {{-- <li class="nav-item ">
          <a class="nav-link" href="./icons.html">
            <i class="material-icons">bubble_chart</i>
            <p>Icons</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./map.html">
            <i class="material-icons">location_ons</i>
            <p>Maps</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./notifications.html">
            <i class="material-icons">notifications</i>
            <p>Notifications</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./rtl.html">
            <i class="material-icons">language</i>
            <p>RTL Support</p>
          </a>
        </li> --}}
       
      </ul>
    </div>
  </div>
  <div class="main-panel">
    <!-- Navbar -->
    
    <!-- End Navbar -->
{{-- dsaslkajsadk --}}
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">
                {{-- <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> --}}

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    @guest
                    @else
                        {{-- <ul class="navbar-nav mr-auto">
                            @if(Auth()->user()->role == "admin")
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                    Alternatif
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{route('alternatif')}}">Alternatif</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="{{route('nilai')}}">Nilai Alternatif</a>
                                </div>
                            </li>
                            <li><a class="nav-link" href="{{route('perhitungan')}}">Perhitungan</a></li>
                            @endif
                        </ul> --}}
                    @endguest

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                            <li><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></li>
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
            
        </main>
    </div>
</div>

    {{-- SCRIPT --}}
  
    <script src="{{ asset('assets/js/core/jquery.min.js') }}"></script>
    {{-- <script src="{{ asset('assets/js/core/popper.min.js') }}"></script> --}}
    <script src="{{ asset('assets/js/core/bootstrap-material-design.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/perfect-scrollbar.jquery.min.js') }}"></script>
    
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="{{ asset('assets/js/material-dashboard.js?v=2.1.2') }}" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  {{-- <script src="{{ asset('assets/demo/demo.js') }}"></script> --}}
  
    {{-- END SCRIPT
</body>
</html>
