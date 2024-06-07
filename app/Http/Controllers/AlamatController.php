<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Alamat;
use App\Models\City;
use App\Models\Province;

class AlamatController extends Controller
{
    public function index()
    {
        $alamats = Alamat::paginate(10);
        return view('alamat.index', compact('alamats'));
    }

    public function sync_province()
{
$err_message = '';
$curl = curl_init();
curl_setopt_array($curl, array(
CURLOPT_HTTPHEADER => array(
"key: ".env('RAJAONGKIR_KEY'),
),
CURLOPT_RETURNTRANSFER => 1,
CURLOPT_URL => 'https://api.rajaongkir.com/starter/province',
CURLOPT_POST => false,
));
$resp = curl_exec($curl);
if(!$resp){
$err_message = 'Error: "'.curl_error($curl).'" - Code:'.curl_errno($curl);
}
curl_close($curl);
if($err_message == ''){
$json = json_decode($resp, TRUE);
$provinces = Province::get();
foreach($provinces as $province){
$province->delete();
}
foreach($json['rajaongkir']['results'] as $result){
Province::create($result);
}
return redirect('/alamat')->with('status_message',

['type' => 'info', 'text' => 'Province synced!']);
}else{
return redirect('/alamat')->with('status_message',
['type' => 'danger', 'text' => $err_message]);
}
}
    // public function sync_province()
    // {
    //     $err_message = '';
    //     $curl = curl_init();
    //     curl_setopt_array($curl, [
    //         CURLOPT_HTTPHEADER => [
    //             "key: " . env('RAJAONGKIR_KEY'),
    //         ],
    //         CURLOPT_RETURNTRANSFER => 1,
    //         CURLOPT_URL => 'https://api.rajaongkir.com/starter/province',
    //         CURLOPT_POST => false,
    //     ]);
    //     $resp = curl_exec($curl);
    //     if (!$resp) {
    //         $err_message = 'Error: "' . curl_error($curl) . '" - Code:' . curl_errno($curl);
    //     }
    //     curl_close($curl);

    //     if ($err_message == '') {
    //         $json = json_decode($resp, true);
    //         City::truncate();
    //         foreach ($json['rajaongkir']['results'] as $result) {
    //             City::create($result);
    //         }
    //         return redirect('/alamat')->with('status_message', [
    //             'type' => 'info',
    //             'text' => 'City synced!'
    //         ]);
    //     } else {
    //         return redirect('/alamat')->with('status_message', [
    //             'type' => 'danger',
    //             'text' => $err_message
    //         ]);
    //     }
    // }
    public function sync_city()
    {
    $err_message = '';
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_HTTPHEADER => array(
    "key: ".env('RAJAONGKIR_KEY'),
    ),
    CURLOPT_RETURNTRANSFER => 1,
    CURLOPT_URL => 'https://api.rajaongkir.com/starter/city',
    CURLOPT_POST => false,
    ));
    $resp = curl_exec($curl);
    if(!$resp){
    $err_message = 'Error: "'.curl_error($curl).'" - Code:'.curl_errno($curl);
    }
    curl_close($curl);
    if($err_message == ''){
    $json = json_decode($resp, TRUE);
    $cities = City::get();
    foreach($cities as $city){
    $city->delete();
    }
    foreach($json['rajaongkir']['results'] as $result){
    City::create($result);
    }
    return redirect('/alamat')->with('status_message',
    ['type' => 'info', 'text' => 'City synced!']);
    }else{
    return redirect('/alamat')->with('status_message',
    ['type' => 'danger', 'text' => $err_message]);
    }
    }
//     public function sync_city()
// {
//     $err_message = '';
    
//     // Lakukan pengambilan data kota dari API RajaOngkir
//     $curl = curl_init();
//     curl_setopt_array($curl, [
//         CURLOPT_HTTPHEADER => [
//             "key: " . env('RAJAONGKIR_KEY'),
//         ],
//         CURLOPT_RETURNTRANSFER => 1,
//         CURLOPT_URL => 'https://api.rajaongkir.com/starter/city',
//         CURLOPT_POST => false,
//     ]);
//     $resp = curl_exec($curl);

//     // Periksa jika ada kesalahan saat mengambil data dari API
//     if (!$resp) {
//         $err_message = 'Error: "' . curl_error($curl) . '" - Code:' . curl_errno($curl);
//     }
//     curl_close($curl);

//     // Jika tidak ada kesalahan, lanjutkan proses sinkronisasi kota
//     if ($err_message == '') {
//         // Decode respon JSON
//         $json = json_decode($resp, true);
        
//         // Kosongkan tabel kota untuk memulai proses sinkronisasi yang bersih
//         City::truncate();
        
//         // Iterasi melalui hasil respon dan simpan data kota ke dalam database
//         foreach ($json['rajaongkir']['results'] as $result) {
//             City::create($result);
//         }
        
//         // Redirect kembali ke halaman alamat dengan pesan sukses
//         return redirect('/alamat')->with('status_message', [
//             'type' => 'info',
//             'text' => 'City synced!'
//         ]);
//     } else {
//         // Jika terdapat kesalahan, redirect kembali ke halaman alamat dengan pesan kesalahan
//         return redirect('/alamat')->with('status_message', [
//             'type' => 'danger',
//             'text' => $err_message
//         ]);
//     }
// }
public function create()
{
$provinces = Province::get();
$cities = City::where('province_id', $provinces->first()->province_id)->get();
return view('alamat.create', ['provinces' => $provinces, 'cities' => $cities]);
}
public function store(Request $request)
{
$request->validate([
'alamat' => 'required|max:255',
'kota_id' => 'required|exists:cities,city_id',
]);
$data = $request->all();
$data['province_id'] =
City::where('city_id', $data['kota_id'])->first()->province_id;
$data['user_id'] = Auth::user()->id;
Alamat::create($data);
return redirect('/dashboard');
}

public function show($id)
{
$alamat = Alamat::where('user_id', Auth::user()->id)->first();
return view('alamat.show', ['alamat' => $alamat]);
}

    public function edit($id)
{
// $alamat = Alamat::find($id);
if($id==0){

    $alamat = Alamat::where('user_id', Auth::user()->id)->first();
    }else{
    $alamat = Alamat::find($id);
    }
$provinces = Province::get();
$cities = City::where('province_id', $alamat->province_id)->get();
return view('alamat.edit', ['alamat' => $alamat,
'provinces' => $provinces, 'cities' => $cities]);
}

public function update(Request $request, $id)
{
$request->validate([

'alamat' => 'required|max:255',
'kota_id' => 'required|exists:cities,city_id',
]);
$data = $request->all();
$data['province_id'] =
City::where('city_id', $data['kota_id'])->first()->province_id;
$alamat = Alamat::find($id);
$alamat->update($data);
if(Auth::user()->role=='KONSUMEN'){
    return redirect('/dashboard');
    }
return redirect('/alamat');
}

public function destroy($id)
{
$alamat = Alamat::find($id);
$alamat->delete();
return redirect('/alamat');
}
}
