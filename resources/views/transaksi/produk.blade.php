@extends('layouts.app')
@section('content')
<div class="container">
<h1>{{ __('Produk') }}</h1>
<div class="card mb-3 w-100">
<div class="row g-0">
<div class="col-md-6">
<img src="{{ url('/storage', $produk->image_url) }}"
class="img-fluid rounded-start" alt="...">
</div>
<div class="col-md-6">
<div class="card-body">
<h2 class="card-title">{{ $produk->nama_produk}}</h2>
</div>
<form action="{{ url('/transaksi/checkout') }}" method="post">
@csrf
<ul class="list-group list-group-flush">
<li class="list-group-item">Rasa: {{ $produk->rasa }}</li>
<li class="list-group-item">Ukuran: {{ $produk->ukuran }}ml</li>
<li class="list-group-item">Berat Satuan:
{{ $produk->berat}}gr</li>
<li class="list-group-item">
<div class="row">
<div class="col-6">
<label class="col-form-label" for="qty">Qty:</label>
</div>

<div class="col-6">

<input type="hidden" name="produk_id"
value="{{ $produk->id }}" />
<input type="hidden" name="berat_satuan"
value="{{ $produk->berat }}" />
<select class="form-control" name="qty"
onchange="hitung()">
@for ($i=1;$i<=10;$i++)
<option value="{{ $i }}">

{{ $i }}
</option>
@endfor
</select>
</div>
</div>

</li>
<li class="list-group-item">
<div class="row">
<div class="col-6">
<label class="col-form-label"
for="courier">Kurir:</label>
</div>

<div class="col-6">

<select class="form-control" name="courier"
onchange="hitung()">
@foreach ($couriers as $courier)
<option value="{{ $courier }}"

{{ $courier==$ccourier ? 'SELECTED' : '' }}>
{{ strtoupper($courier) }}</option>
@endforeach
</select>
</div>
</div>
</li>
<li class="list-group-item">
<div class="row">
<div class="col-6">
<label class="col-form-label"
for="service">Service:</label>
</div>
<div class="col-6">
<input type="hidden" name="destination"
value="{{ $destination }}" />
<input type="hidden" name="origin"
value="{{ $origin }}" />
<select class="form-control" name="service"
onchange="hitung()">
@foreach ($services as $service)
<option value="{{ $service['service'] }}"

{{ $courier==$ccourier ?
'SELECTED' : '' }}>
{{ $service['service'] }}</option>
@endforeach
</select>
</div>
</div>
</li>
<li class="list-group-item">
<div class="row">
<div class="col-6 text-start">
<label class="col-form-label" for="harga_barang">
Harga Barang:</label>
</div>

<div class="col-6 text-end">
<input type="hidden" id="harga_satuan"
name="harga_satuan"
value="{{ $produk->harga }}" />
<input type="text" id="harga_barang"
name="harga_barang" class="form-control"
value="{{ $produk->harga }}" readonly/>
</div>
</div>
</li>
<li class="list-group-item">
<div class="row">
<div class="col-6 text-start">
<label class="col-form-label"
for="ongkos_kirim">Ongkos Kirim:</label>
</div>

<div class="col-6 text-end">

<input type="hidden" id="waktu_kirim"
name="waktu_kirim"
value="{{ $cservice['waktu_kirim'] }}" />
<input type="text" name="ongkos_kirim"
class="form-control"
value="{{ $cservice['ongkos_kirim'] }}" readonly/>
</div>
</div>
</li>
<li class="list-group-item">
<div class="row">
<div class="col-6 text-start">
<label class="col-form-label"
for="total_harga">Total Harga:</label>
</div>

<div class="col-6 text-end">

<input type="text" id="total_harga" name="total_harga"
class="form-control"
value="{{ $produk->harga +
$cservice['ongkos_kirim'] }}"
readonly/>
</div>
</div>
</li>
<li class="list-group-item text-end">
<button class="btn btn-primary">BELI</button>&nbsp;
<a href="{{ url('/transaksi/daftar_produk') }}" c
lass="btn">KEMBALI</a>
</li>
</ul>
</form>

</div>
</div>
</div>
</div>
<script>
// function hitung(){
// var rajaongkir_key = '{{ $rajaongkir_key }}';
// var harga_satuan = document.getElementsByName("harga_satuan")[0].value;
// var berat_satuan = document.getElementsByName("berat_satuan")[0].value;
// var courier = document.getElementsByName("courier")[0].value;
// var qty = document.getElementsByName("qty")[0].value;
// var weight = qty * berat_satuan;
// var harga_barang = qty * harga_satuan;
// document.getElementsByName("harga_barang")[0].value = harga_barang;
// const url = '{{ url("/api/get_ongkir") }}';
// const params = 'destination=' + {{ $destination }}
// + '&weight=' + weight + '&courier=' + courier;
// const xhr = new XMLHttpRequest();
// xhr.open('POST', url, true);
// xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
// xhr.withCredentials = true;
// xhr.onreadystatechange = function () {
// if (xhr.readyState === 4) {
// if (xhr.status === 200) {
// const response = JSON.parse(xhr.responseText);
// var services = response['services'];
// var cservice = document.getElementsByName("service")[0].value;
// var found = false;
// var ongkos_kirim = 0;
// var waktu_kirim = '';
// for(var i=0;i<services.length;i++){
// if(cservice==services[i]['service']){
// found = true;
// console.log(services[i]['ongkos_kirim']);
// ongkos_kirim = services[i]['ongkos_kirim'];
// waktu_kirim = services[i]['waktu_kirim'];
// document.getElementsByName("waktu_kirim")[0].value =
// services[i]['waktu_kirim'];
// }
// }
// if(found==false){
// console.log('false');
// ongkos_kirim = services[0]['ongkos_kirim'];
// waktu_kirim = services[0]['waktu_kirim'];
// document.getElementsByName("service")[0].options.length = 0;
// for(var i=0;i<services.length;i++){

// document.getElementsByName("service")[0]
// .add(new Option(services[i]['service'],
// services[i]['service']));
// }
// }
// document.getElementsByName("ongkos_kirim")[0].value = ongkos_kirim;
// document.getElementsByName("waktu_kirim")[0].value = waktu_kirim;
// document.getElementsByName("total_harga")[0].value =
// Number(document.getElementsByName("harga_barang")[0].value)
// + Number(ongkos_kirim);
// } else {
// console.error('Error:', xhr.statusText);
// }
// }
// };
// xhr.onerror = function () {
// console.error('Request error');
// };
// xhr.send(params);
function hitung() {
    var harga_satuan = document.getElementsByName("harga_satuan")[0].value;
    var berat_satuan = document.getElementsByName("berat_satuan")[0].value;
    var courier = document.getElementsByName("courier")[0].value;
    var qty = document.getElementsByName("qty")[0].value;
    var weight = qty * berat_satuan;
    var harga_barang = qty * harga_satuan;
    document.getElementsByName("harga_barang")[0].value = harga_barang;

    const destination = {{ $destination }};
    const url = '{{ url("/api/get_ongkir") }}';
    const params = 'destination=' + destination + '&weight=' + weight + '&courier=' + courier;

    const xhr = new XMLHttpRequest();
    xhr.open('POST', url, true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.withCredentials = true;
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                var services = response['services'];
                var cservice = document.getElementsByName("service")[0].value;
                var found = false;
                var ongkos_kirim = 0;
                var waktu_kirim = '';

                for (var i = 0; i < services.length; i++) {
                    if (cservice == services[i]['service']) {
                        found = true;
                        ongkos_kirim = services[i]['ongkos_kirim'];
                        waktu_kirim = services[i]['waktu_kirim'];
                        document.getElementsByName("waktu_kirim")[0].value = services[i]['waktu_kirim'];
                    }
                }

                if (found == false) {
                    ongkos_kirim = services[0]['ongkos_kirim'];
                    waktu_kirim = services[0]['waktu_kirim'];
                    document.getElementsByName("service")[0].options.length = 0;
                    for (var i = 0; i < services.length; i++) {
                        document.getElementsByName("service")[0].add(new Option(services[i]['service'], services[i]['service']));
                    }
                }

                document.getElementsByName("ongkos_kirim")[0].value = ongkos_kirim;
                document.getElementsByName("waktu_kirim")[0].value = waktu_kirim;
                document.getElementsByName("total_harga")[0].value = Number(document.getElementsByName("harga_barang")[0].value) + Number(ongkos_kirim);
            } else {
                console.error('Error:', xhr.statusText);
            }
        }
    };
    xhr.onerror = function () {
        console.error('Request error');
    };
    xhr.send(params);
}
</script>
@endsection