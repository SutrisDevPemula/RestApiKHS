<?php

namespace App\Http\Controllers;

use App\Model\Khs;
use Illuminate\Http\Request;

class KhsController extends Controller
{
  
    public function index()
    {
        //
        $khs = Khs::paginate(5);
        return (new)
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

  
    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
