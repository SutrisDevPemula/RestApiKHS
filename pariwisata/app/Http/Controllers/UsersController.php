<?php

namespace App\Http\Controllers;

use App\Http\Resources\UsersResource;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
  
    public function index()
    {
        $users = User::paginate(5);
        return (new Users($users))
            ->response()
            ->setStatusCode(200);
    }


    public function store(Request $request)
    {

        $users = User::create($request->all());

        return (new App\Http\Controllers\UsersResource)
            ->response()
            ->setStatusCode(201);


    }

    public function show($id)
    {
        //
        $user = User::findOrFail($id);
        // $user = User::where('id', $id)->get();


        return (new Users($user))
            ->response()
            ->setStatusCode(200);
    }



    public function update(Request $request, $id)
    {
        //
        $user = User::findOrFail($id);
        // $user = User::where('id', $id)->get();
        $user->update($request->all());
        $user->nim = $request->get('id');

        return (new Users($user))
            ->response()
            ->setStatusCode(200);
    }

    public function delete($id)
    {
         //
         $user = User::findOrFail($id);
         // $user = User::where('id', $id)->get();
         $user->delete();
 
         return response() ->json([
             'status' => "Succes deleted user"
         ]);      
    }
}
