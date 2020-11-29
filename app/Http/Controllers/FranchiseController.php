<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use App\Franchise;

class FranchiseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $franchise = Franchise::all();
        return view('franchise.index', ['franchise' => $franchise]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('franchise.tambah');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        // $this->validator($request->all())->validate();
        // $saveFranchise = Franchise::create($request->all())->id;
        // if (!$saveFranchise) {
        //     return back();
        // }
        $validator = Validator::make(request()->all(), [
            'nama' => 'required',
            'kategori' => "required",
            'modal' => "required",
            'ukuran' => "required",
            'metode' => "required",
            'deskripsi' => "required",
            'image' => 'image|mimes:jpeg,png,jpg|max:1024',
        ]);

        if ($validator->fails()) {
            dd($validator->errors());
            return back()->withErrors($validator->errors());
        } else {
            $franchise = new franchise();
            $franchise->nama = $request->get('nama');
            $franchise->kategori = $request->get('kategori');
            $franchise->modal = $request->get('modal');
            $franchise->ukuran = $request->get('ukuran');
            $franchise->metode = $request->get('metode');
            $franchise->deskripsi = $request->get('deskripsi');
            if ($request->hasFile('image')) {
                $img = $request->file('image');
                $filename = time() . '.' . $img->getClientOriginalExtension();
                $franchise->image=$filename;
                Storage::putFileAs("public/images/franchise", $img, $filename);
            }
            $franchise->save();
            return redirect()->route('franchise.index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $franchise = Franchise::find($id);
        return view("franchise.detil", ["franchise" => $franchise]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $franchise = Franchise::find($id);
        return view('franchise.edit',['franchise' => $franchise]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $validator = Validator::make(request()->all(), [
            'nama' => 'required',
            'kategori' => "required",
            'modal' => "required",
            'ukuran' => "required",
            'metode' => "required",
            'deskripsi' => "required",
            'image' => 'image|mimes:jpeg,png,jpg|max:1024',
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            $franchise = Franchise::find($id);
            $franchise->nama = $request->get('nama');
            $franchise->kategori = $request->get('kategori');
            $franchise->modal = $request->get('modal');
            $franchise->ukuran = $request->get('ukuran');
            $franchise->metode = $request->get('metode');
            $franchise->deskripsi = $request->get('deskripsi');
            if ($request->hasFile('image')) {
                $img = $request->file('image');
                Storage::delete("public/images/franchise/" . $franchise->image);
                $filename = time() . '.' . $img->getClientOriginalExtension();
                Storage::putFileAs("public/images/franchise", $img, $filename);
                $franchise->image = $filename;
            }
            $franchise->save();
            return redirect()->route('franchise.index');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        // $alternatif = franchise::destroy($id);
        $franchise = Franchise::find($id);
        Storage::delete("public/images/franchise/" . $franchise->image);
        $franchise->delete();
        return redirect(route('franchise.index'));
    }

    // private function validator(array $data)
    // {
    //     return Validator::make($data,[

    //         'nama' => 'required',
    //         'kategori' => "required",
    //         'modal' => "required",
    //         'ukuran' => "required",
    //         'metode' => "required",
    //         'deskripsi' => "required",
    //         'image' => 'image|mimes:jpeg,png,jpg|max:1024',
    //     ]);
    // }
}
