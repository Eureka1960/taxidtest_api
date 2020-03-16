<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    public function index()
    {
        return Invoice::all();
    }

    public function show(Invoice $invoice)
    {
        return $invoice;
    }

    private function localValidation($request)
    {
        $request->validate([
            'auth_id'           => 'required',
            'tax_id'            => 'required',
            'paid'              => 'required'
        ]);

        return $request->all();
    }

    public function store(Request $request)
    {
        $invoice = Invoice::create($this->localValidation($request));
        return $invoice;
    }

    public function update(Invoice $invoice, Request $request)
    {
        $invoice->update($this->localValidation($request));
        return $invoice;
    }

    public function destroy(Invoice $invoice)
    {
        return $invoice->delete();
    }
}
