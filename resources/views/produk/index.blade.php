@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ __('Produk') }}</h1>
    <div class="row">
        <div class="col-md-12">
            <a class="btn btn-large btn-primary" href="{{ url('/produk/create') }}">Tambah Produk</a>
        </div>
    </div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>&nbsp;</th>
                <th>Nama</th>
                <th>Rasa</th>
                <th>Ukuran</th>
                <th>Berat</th>
                <th>Harga</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($produks as $produk)
            <tr>
                <td class="d-flex">
                    <a href="{{ url('/produk/edit/'.$produk->id) }}" class="btn btn-primary">Edit</a>
                    &nbsp;
                    <form action="{{ url('/produk/destroy/'.$produk->id) }}" method="POST">
                        @csrf
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
                <td>{{ $produk->nama_produk }}</td>
                <td>{{ $produk->rasa }}</td>
                <td>{{ $produk->ukuran }}</td>
                <td>{{ $produk->berat }}</td>
                <td>{{ $produk->harga }}</td>
            </tr>
            @empty
            <tr>
                <td colspan="6">
                    <div class="alert alert-warning"> Tidak ada data!</div>
                </td>
            </tr>
            @endforelse
        </tbody>
    </table>
    @if($produks)
    {{ $produks->links() }}
    @endif
</div>


{{-- @section('content')
<div class="container">
    <h1>{{ __('Alamat') }}</h1>
    <div class="row">
        <div class="col-md-12 text-end">
            <form method="post" action="{{ url('/alamat/sync_province') }}" style="display:inline">
                @csrf
                <button class="btn btn-primary">Sync Pronvice RajaOngkir</button>
            </form>
            <form method="post" action="{{ url('/alamat/sync_city') }}" style="display:inline">
                @csrf
                <button class="btn btn-primary">Sync City RajaOngkir</button>
            </form>
        </div>
    </div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>&nbsp;</th>
                <th>User</th>
                <th>Alamat</th>
                <th>Kota</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($alamats as $alamat)
            <tr>
                <td class="d-flex">
                    <a href="{{ url('/alamat/edit/'.$alamat->id) }}" class="btn btn-primary">Edit</a>
                    <form action="{{ url('/alamat/destroy/'.$alamat->id) }}" method="POST">
                        @csrf
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
                <td>
                    {{ $alamat->user->name }}<br/><small>{{ $alamat->user->email }}</small>
                </td>
                <td>{{ $alamat->alamat }}</td>
                <td>
                    {{ $alamat->city->type }}&nbsp;{{ $alamat->city->city_name }}<br/>
                    {{ $alamat->city->province }}<br/>
                    {{ $alamat->city->postal_code }}<br/>
                </td>
            </tr>
            @empty
            <tr>
                <td colspan="4">
                    <div class="alert alert-warning">Tidak ada data!</div>
                </td>
            </tr>
            @endforelse
        </tbody>
    </table>
    @if($alamats)
    {{ $alamats->links() }}
    @endif
</div> --}}
@endsection
