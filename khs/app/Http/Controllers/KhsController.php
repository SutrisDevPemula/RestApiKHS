<?php

namespace App\Http\Controllers;

use App\Http\Resources\KhssResource;
use App\Http\Resources\KhsResource;
use App\Model\Khs;
use Illuminate\Http\Request;

class KhsController extends Controller
{

    public function index()
    {
        //
        $khs = Khs::paginate(5);
        return (new KhssResource($khs))
            ->response()
            ->setStatusCode(200);
    }

    public function store(Request $request)
    {
        //
        $khs = Khs::create($request->all());
        return (new KhsResource($khs))
            ->response()
            ->setStatusCode(201);
    }


    public function show($id)
    {
        //
        $khs = Khs::findOrFail($id);
        return (new KhsResource($khs))
            ->response()
            ->setStatusCode(200);
    }


    public function update(Request $request, $id)
    {
        //
        $khs = Khs::findOrFail($id);
        $khs->update($request->all());
        return (new KhsResource($khs))
            ->response()
            ->setStatusCode(200);
    }

    public function delete($id)
    {
        //
        $khs = Khs::findOrFail($id);
        $khs->delete();
        return response() ->json([
            'status' => "Success deleted khs"
        ]);  
    }
}
