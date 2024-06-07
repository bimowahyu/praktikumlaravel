<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Produk;
use App\Models\Alamat;
use App\Models\City;
use App\Models\Province;
use App\Models\Transaksi;
use Illuminate\Support\Facades\Auth;

class TransaksiController extends Controller
{
    public function daftar_produk(){
        $open_trans = Transaksi::where('status_transaksi', 'PESAN')
        ->where('user_id', Auth::user()->id)
        ->first();
        $produks = Produk::paginate(4);
        return view('transaksi.daftar_produk', ['produks' => $produks,
        'open_trans' => $open_trans]);
        }
        // public function produk($id){
        //     $open_trans = Transaksi::where('status_transaksi', 'PESAN')
        //     ->where('user_id', Auth::user()->id)
        //     ->first();
        //     if($open_trans!=null) return redirect('/home')->with('status_message',
        //     ['type' => 'warning', 'text' => 'Harap selesaikan pesanan']);
        //     $alamat = Alamat::where('user_id', Auth::user()->id)->first();
        //     if($alamat==null) return redirect('/home')->with('status_message',
        //     ['type' => 'danger', 'text' => 'Belum ada alamat']);
        //     $produk = Produk::find($id);
        //     if($produk==null) return redirect('/home')->with('status_message',
        //     ['type' => 'danger', 'text' => 'Produk tidak dikenal']);
        //     $err_message = '';
        //     $curl = curl_init();
        //     $origin = env('RAJAONGKIR_ORIGIN');
        //     $destination = $alamat->kota_id;
        //     $weight = $produk->berat;
        //     $courier = 'pos';
        //     curl_setopt_array($curl, array(
        //     CURLOPT_HTTPHEADER => array(
        //     "key: ".env('RAJAONGKIR_KEY'),
        //     "Content-Type: application/x-www-form-urlencoded"
            
        //     ),
        //     CURLOPT_RETURNTRANSFER => 1,
        //     CURLOPT_URL => 'https://api.rajaongkir.com/starter/cost',
        //     CURLOPT_POST => 1,
        //     CURLOPT_POSTFIELDS => http_build_query(['origin' => $origin,
        //     'destination' => $destination, 'weight' => $weight,
        //     'courier' => $courier]),
        //     ));
        //     $resp = curl_exec($curl);
        //     if(curl_errno($curl)){
        //     $err_message = 'Error: "'.curl_error($curl).'" - Code:'.curl_errno($curl);
        //     }
        //     curl_close($curl);
        //     if($err_message!='')
        //     return redirect('/home')->with('status_message', $err_message);
        //     $resp_array = json_decode($resp, TRUE);
        //     $services = [];
        //     foreach($resp_array['rajaongkir']['results'][0]['costs'] as $cost){
        //     $services[] = ['service' => $cost['service'],
        //     'ongkos_kirim' => $cost['cost'][0]['value'],
        //     'waktu_kirim' => $cost['cost'][0]['etd']];
        //     }
        //     $cservice = $services[0];
        //     return view('transaksi.produk', ['produk' => $produk, 'ccourier' => $courier,
        //     'couriers' => ['jne', 'pos', 'tiki'], 'services' => $services,
        //     'destination' => $destination, 'origin' => $origin,
        //     'cservice' => $cservice ]);
        //     }
        //     public function checkout(Request $request){
        //     $transaksi = new Transaksi();
        //     $transaksi->tanggal_order = Carbon::today();
        //     $transaksi->user_id = Auth::user()->id;
        //     $transaksi->alamat_id =
        //     Alamat::where('user_id', $transaksi->user_id)->first()->id;
        //     $transaksi->produk_id = $request->get('produk_id',0);
        //     $transaksi->qty = $request->get('qty',0);
        //     $produk = Produk::find($transaksi->produk_id);
        //     $transaksi->weight = $transaksi->qty * $produk->berat;
        //     $transaksi->courier = $request->get('courier',0);
        //     $transaksi->service = $request->get('service',0);
        //     $transaksi->waktu_kirim = 0;
        //     $transaksi->ongkos_kirim = $request->get('ongkos_kirim',0);
        //     $transaksi->harga_barang = $request->get('harga_barang',0);
        //     $transaksi->total_harga = $request->get('total_harga',0);
        //     $transaksi->status_transaksi = 'PESAN';
        //     $transaksi->rating = 0;
        //     $transaksi->save();
            
        //     return redirect('/home')->with('status_message',
        //     ['type' => 'success', 'text' => 'Transaksi berhasil']);
        //     }
        public function produk($id){
            $open_trans = Transaksi::where('status_transaksi', 'PESAN')
                ->where('user_id', Auth::user()->id)
                ->first();
            if($open_trans!=null) 
                return redirect('/home')->with('status_message',
                ['type' => 'warning', 'text' => 'Harap selesaikan pesanan']);
            $alamat = Alamat::where('user_id', Auth::user()->id)->first();
            if($alamat==null) 
                return redirect('/home')->with('status_message',
                ['type' => 'danger', 'text' => 'Belum ada alamat']);
            $produk = Produk::find($id);
            if($produk==null) 
                return redirect('/home')->with('status_message',
                ['type' => 'danger', 'text' => 'Produk tidak dikenal']);
            
            $err_message = '';
            $curl = curl_init();
            $origin = env('RAJAONGKIR_ORIGIN');
            $destination = $alamat->kota_id;
            $weight = $produk->berat;
            $courier = 'pos';
            curl_setopt_array($curl, array(
                CURLOPT_HTTPHEADER => array(
                    "key: ".env('RAJAONGKIR_KEY'),
                    "Content-Type: application/x-www-form-urlencoded"
                ),
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_URL => 'https://api.rajaongkir.com/starter/cost',
                CURLOPT_POST => 1,
                CURLOPT_POSTFIELDS => http_build_query(['origin' => $origin,
                'destination' => $destination, 'weight' => $weight,
                'courier' => $courier]),
            ));
            $resp = curl_exec($curl);
            if(curl_errno($curl)){
                $err_message = 'Error: "'.curl_error($curl).'" - Code:'.curl_errno($curl);
            }
            curl_close($curl);
            if($err_message!='')
                return redirect('/home')->with('status_message', $err_message);
            $resp_array = json_decode($resp, TRUE);
            $services = [];
            foreach($resp_array['rajaongkir']['results'][0]['costs'] as $cost){
                $services[] = ['service' => $cost['service'],
                'ongkos_kirim' => $cost['cost'][0]['value'],
                'waktu_kirim' => $cost['cost'][0]['etd']];
            }
            $cservice = $services[0];
            $rajaongkir_key = env('RAJAONGKIR_KEY');
            return view('transaksi.produk', [
                'produk' => $produk, 
                'ccourier' => $courier,
                'couriers' => ['jne', 'pos', 'tiki'], 
                'services' => $services,
                'destination' => $destination, 
                'origin' => $origin,
                'cservice' => $cservice,
                'rajaongkir_key' => $rajaongkir_key
            ]);
        }
}
