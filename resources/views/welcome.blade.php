<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>SPK Franchise</title>
        <!-- Favicons -->
        <link rel="shortcut icon" href="{{asset('assets/img/icon.png')}}" type="image/x-icon">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                /*color: #636b6f;*/
                color: black;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links{
                font-size: 20px;
                font-weight: 500;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 16px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

            .brand {
            width: 120px;
            height: 120px;
            overflow: hidden;
            border-radius: 50%;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0,0,0,.05);
            position: relative;
            z-index: 1;
            }

            .brand img {
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>
                        <a href="{{ route('register') }}">Register</a>
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="brand">
                    <img src="{{asset('assets/img/icon.png')}}" alt="logo">
                </div>
                <div class="title m-b-md">
                    Cari Franchisemu
                </div>
                <div class="links">
                    Sistem Pendukung Keputusan untuk Pemilihan Usaha Franchise dengan Metode Simple Additive Weighting (SAW)
                </div>
                <div class="links">
                    Made  By<a style="color: purple;" href="https://gitlab.com/tukangsare/">Denny Reza Marcell</a>
                </div>
            </div>
        </div>
    </body>
</html>
