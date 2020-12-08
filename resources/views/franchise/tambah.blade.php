@extends('layouts.app')

@section('content')
<style>
    input[type="file"] {
    display: none;
}
.custom-file-upload {
    border: 1px solid #ccc;
    display: inline-block;
    padding: 6px 12px;
    cursor: pointer;
}
</style>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h2 class="float-left">Tambah Franchise</h2>
                        </form>
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <form enctype="multipart/form-data" action="{{route('franchise.simpan')}}" method="POST" class="col-md-12">
                                @csrf
                                <div class="form-group">
                                    <label for="nama">Nama Franchise <span class="text-danger">*</span></label>
                                    <input type="text" name="nama" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="kategori">Kategori Franchise <span class="text-danger">*</span></label>
                                    <select name="kategori" required class="form-control">
                                        <option value="">-- Pilih Kategori --</option>
                                        <option value="Fast Food">Fast Food</option>
                                        <option value="Toko Retail">Toko Retail</option>
                                        <option value="Laundry">Laundry</option>
                                        <option value="Snack Kekinian">Snack Kekinian</option>
                                        <option value="Minuman Kekinian">Minuman Kekinian</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="modal">Modal Franchise <span class="text-danger">*</span></label>
                                    <input type="text" name="modal" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="ukuran">Ukuran Bangunan <span class="text-danger">*</span></label>
                                    <select name="ukuran" required class="form-control">
                                        <option value="">-- Pilih Ukuran Bangunan --</option>
                                        <option value="Bangunan Besar (>= 200 m2)">Bangunan Besar (>= 200 m2)</option>
                                        <option value="Bangunan Sedang (30 - 100 m2)">Bangunan Sedang (30 - 100 m2)</option>
                                        <option value="	Bangunan Kecil (4 - 20 m2)">	Bangunan Kecil (4 - 20 m2)</option>
                                        <option value="Food Truck">Food Truck</option>
                                        <option value="Stand Besar (5 m2)">Stand Besar (5 m2)</option>
                                        <option value="Stand Kecil (2 m2)">Stand Kecil (2 m2)</option>
                                        {{-- @foreach($kriteria as $k)
                                            <option value="{{$k->id}}" {{(request('k') == $k->id)?'selected':''}}>{{$k->kode." - ".$k->nama}}</option>
                                        @endforeach --}}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="metode">Metode Franchise <span class="text-danger">*</span></label>
                                    <select name="metode" required class="form-control">
                                        <option value="">-- Pilih Metode --</option>
                                        <option value="Kombinasi (Online Offline)">Kombinasi (Online Offline)</option>
                                        <option value="Online">Online</option>
                                        <option value="Offline">Offline</option>
                                        {{-- @foreach($kriteria as $k)
                                            <option value="{{$k->id}}" {{(request('k') == $k->id)?'selected':''}}>{{$k->kode." - ".$k->nama}}</option>
                                        @endforeach --}}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="deskripsi">Deskripsi <span class="text-danger">*</span></label>
                                    <textarea name="deskripsi" class="form-control"></textarea>
                                </div>
                                    <label for="image" class="custom-file-upload">
                                    <i class="fa fa-cloud-upload"></i> Upload Logo
                                    </label>
                                    <input name="image" id="image" type="file"/>
                                <br>
                                {{-- <div class="form-group form-file-upload form-file-multiple">
                                    <input type="file" multiple="" class="inputFileHidden">
                                    <div class="input-group">
                                        <input type="text" class="form-control inputFileVisible" placeholder="Single File">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-fab btn-round btn-primary">
                                                <i class="material-icons">attach_file</i>
                                            </button>
                                        </span>
                                    </div>
                                </div> --}}
                                <div class="float-right">
                                    <button type="submit" class="btn btn-success">Tambah</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection