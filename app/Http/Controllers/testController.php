<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use app\Http\Requests\testRequest;

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

        dd($req->input("name"),
            $req->input("mail"),
            $req->input("text"));
            
    }

}
