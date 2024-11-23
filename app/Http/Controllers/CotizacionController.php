<?php

namespace App\Http\Controllers;

use Inertia\Inertia;

class CotizacionController extends Controller
{
    public function index()
    {
        return Inertia::render('Cotizacion');  // Renderiza la vista Home.vue
    }
}
