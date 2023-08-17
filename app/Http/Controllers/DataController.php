<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\temp_4;

class DataController extends Controller
{
    public function index()
    {
        $data = temp_4::all(); // Retrieve data from the database using your model

        return view('data.index', compact('data'));
    }
}
