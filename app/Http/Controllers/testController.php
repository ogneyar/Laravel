<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use app\Http\Requests\testRequest;
use App\Models\testModel;

use Illuminate\Support\Facades\DB;

class testController extends Controller
{
    public function test(Request $req) {
        $validation = $req->validate([
            'name' => "require|min:3|max:10",
            'mail' => "require|min:3|max:10",
            'text' => "require|min:3|max:10"
        ]);
        dd($req->input("name"),
            $req->input("mail"),
            $req->input("text")); // типа $_GET['text']
            //dd($_GET['sss']); // работает
    }

    public function post(Request $req) { //testRequest

        // dd($req->input("name"),
        //     $req->input("mail"),
        //     $req->input("text"));

        // $tMod = new testModel();
        // $tMod->name = $req->input("name");
        // $tMod->mail = $req->input("mail");
        // $tMod->text = $req->input("text");
        
        // $tMod->save();

        // echo "типа save()";

        // return redirect()->route('home');



        //$users = DB::table('users')->get();
        $users = DB::table('users')->get()->where('name_client', 'Otrad');

        dd($users[0]->id); 

        //return view('user.index', ['users' => $users]);
    }

}
