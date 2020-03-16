<?php

namespace App\Http\Controllers;

use App\Models\Assujetti;
use Illuminate\Http\Request;

class AssujettiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Assujetti::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    private function localValidation($request)
    {
        $request->validate([
            'name'      => 'required|min:2',
            'rccm'      => 'required|min:12',
            'id_nat'    => 'required|min:8',
            'tax_number'    => 'required|min:6',
            'address'       => 'required|min:7'
        ]);

        return $request;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request = $this->localValidation($request);

        $assujetti = Assujetti::create($request->all());
        return $assujetti; //Just for test, this function will return a bool
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Assujetti $assujetti)
    {
        return $assujetti;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Assujetti $assujetti, Request $request)
    {
        $assujetti->update($this->localValidation($request)->all());

        return $assujetti; //Just for test, this function will return a bool
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Assujetti $assujetti)
    {
        return $assujetti->delete();
    }
}
