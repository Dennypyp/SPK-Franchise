@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h2 class="float-left">Franchise</h2>
                        <div class="float-right">
                            @if(Auth()->user()->role == "admin")
                                <a href="{{route('franchise.tambah')}}" class="btn btn-success">Tambah</a>
                            @endif
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Nama</th>
                                    <th class="text-center">Kategori</th>
                                    <th class="text-center" style="width:30%">Aksi</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if(!empty($franchise))
                                    @foreach($franchise as $data)
                                        <tr>
                                            <td>{{$loop->iteration}}</td>
                                            <td>{{$data->nama}}</td>
                                            <td>{{$data->kategori}}</td>
                                            <td class="text-center">
                                                <form action="{{route('franchise.hapus',['id' => $data->id])}}" method="POST">
                                                    @csrf
                                                    <a href="{{route('franchise.detil',['id' => $data->id])}}" class="btn btn-sm btn-info">Detil</a>
                                                    @if(Auth()->user()->role == "admin")
                                                        <a href="{{route('franchise.edit',['id' => $data->id])}}" class="btn btn-sm btn-warning">Edit</a>
                                                    <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                                                    @endif
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                @else
                                    <tr>
                                        <td colspan="5" class="text-center">Data tidak ditemukan</td>
                                    </tr>
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
