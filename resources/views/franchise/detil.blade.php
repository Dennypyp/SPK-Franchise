@extends('layouts.app')

@section('content')
    <div class="content">
        <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
            <div class="card">
                <div class="card-header card-header-primary">
                <h4 class="card-title">Detil Franchise</h4>
                <p class="card-category">Informasi profile {{$franchise->nama}}</p>
                </div>
                <div class="card-body" style="margin-top: 20px">
                    <div class="card card-profile">
                
                        <div class="card-avatar">
                        <a href="javascript:;">
                            <img class="img" src="{{asset('storage/images/franchise/'.$franchise->image)}}" />
                        </a>
                        </div>
                        <div class="card-body">
                        <h6 class="card-category text-gray">{{$franchise->kategori}}</h6>
                        <h4 class="card-title">{{$franchise->nama}}</h4>
                        <div class="table-responsive">
                                <table class="table">
                                <tbody>
                                    <tr>
                                    <th class="text-primary">
                                        MODAL
                                    </th>
                                    <th>
                                        {{$franchise->modal}}
                                    </th>
                                    
                                    </tr>
                                    <tr>
                                        <th class="text-primary">
                                            UKURAN BANGUNAN
                                        </th>
                                        <th>
                                            {{$franchise->ukuran}}
                                        </th>
                                        
                                    </tr>
                                    <tr>
                                        <th class="text-primary">
                                            METODE
                                        </th>
                                        <th>
                                            {{$franchise->metode}}
                                        </th>
                                        
                                        </tr>
                                </tbody>
                            </table>
                            </div>
                        <p style="font-size: 15px">
                            {{$franchise->deskripsi}}
                        </p>
                        </div>
                    
                </div>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
@endsection



