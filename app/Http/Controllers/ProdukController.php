<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produk;

class ProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $produks = Produk::paginate(10);
        return view('produk.index', ['produks' => $produks]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('produk.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama_produk' => 'required|max:255',
            'image_url' => 'nullable|image',
            'rasa' => 'nullable|string',
            'ukuran' => 'nullable|integer',
            'berat' => 'required|integer',
            'harga' => 'required|integer',
        ]);

        $data = $request->all();
        if (isset($data['image_url']) && $request->hasFile('image_url')) {
            $data['image_url'] = $request->file('image_url')->store('assets/produk', 'public');
        } else {
            $data['image_url'] = '';
        }

        Produk::create($data);
        return redirect('/produk');
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
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $produk = Produk::find($id);
        return view('produk.edit', ['produk' => $produk]);
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
        $request->validate([
            'nama_produk' => 'required|max:255',
            'image_url' => 'nullable|image',
            'rasa' => 'nullable|string',
            'ukuran' => 'nullable|integer',
            'berat' => 'required|integer',
            'harga' => 'required|integer',
        ]);

        $data = $request->all();
        if (isset($data['image_url']) && $request->hasFile('image_url')) {
            $data['image_url'] = $request->file('image_url')->store('assets/produk', 'public');
        }

        $produk = Produk::find($id);
        if ($produk->image_url != '') {
            unlink(storage_path('app/public/' . $produk->image_url));
        }

        $produk->update($data);
        return redirect('/produk');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $produk = Produk::find($id);
        if ($produk->image_url != '') {
            unlink(storage_path('app/public/' . $produk->image_url));
        }
        $produk->delete();
        return redirect('/produk');
    }

    public function destroy_image($id)
    {
        $produk = Produk::find($id);
        unlink(storage_path('app/public/' . $produk->image_url));
        $produk->image_url = '';
        $produk->save();
        return redirect('/produk/edit/' . $id);
    }
}
