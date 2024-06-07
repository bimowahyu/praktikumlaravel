<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TransaksiController extends Controller
{
    public function get_ongkir(Request $request)
    {
        // Validasi input request
        $request->validate([
            'destination' => 'required|integer',
            'weight' => 'required|integer',
            'courier' => 'required|string',
        ]);

        $err_message = '';
        $curl = curl_init();
        $origin = env('RAJAONGKIR_ORIGIN');
        $destination = $request->input('destination');
        $weight = $request->input('weight');
        $courier = $request->input('courier');

        curl_setopt_array($curl, [
            CURLOPT_HTTPHEADER => [
                "key: " . env('RAJAONGKIR_KEY'),
                "Content-Type: application/x-www-form-urlencoded"
            ],
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_URL => 'https://api.rajaongkir.com/starter/cost',
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => http_build_query([
                'origin' => $origin,
                'destination' => $destination,
                'weight' => $weight,
                'courier' => $courier
            ]),
        ]);

        $resp = curl_exec($curl);

        if (curl_errno($curl)) {
            $err_message = 'Error: "' . curl_error($curl) . '" - Code:' . curl_errno($curl);
        }
        
        curl_close($curl);

        if ($err_message === '') {
            $services = [];
            $json = json_decode($resp, true);

            if (isset($json['rajaongkir']['results'][0]['costs'])) {
                foreach ($json['rajaongkir']['results'][0]['costs'] as $cost) {
                    $services[] = [
                        'service' => $cost['service'],
                        'ongkos_kirim' => $cost['cost'][0]['value'],
                        'waktu_kirim' => $cost['cost'][0]['etd']
                    ];
                }
                return response()->json(['services' => $services], 200);
            } else {
                $err_message = 'Unexpected API response structure.';
            }
        }

        return response()->json(['error' => $err_message], 500);
    }
}
