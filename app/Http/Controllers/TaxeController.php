<?php

namespace App\Http\Controllers;

use App\Models\Taxe;
use Illuminate\Http\Request;

class TaxeController extends Controller
{
    public function index()
    {
        return Taxe::all();
    }

    public function show(Taxe $taxe)
    {
        return $taxe;
    }

    private function localValidation($request)
    {
        $request->validation([
            'name'          => 'required|min:3',
            'fee'           => 'required|decimal'
        ]);

        return $request->all();
    }

    public function create(Request $request)
    {
        return Taxe::create($this->localValidation($request));
    }

    public function update(Taxe $taxe, Request $request)
    {
        return $taxe->update($this->localValidation($request));
    }

    public function destroy(Taxe $taxe)
    {
        return $taxe->delete();
    }
}
