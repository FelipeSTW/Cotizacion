<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ClienteController extends Controller
{
    // Mostrar el formulario para crear un cliente
    public function create()
    {
        return Inertia::render('Clientes/Create');
    }

    // Guardar el cliente en la base de datos
    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:255',
            'email' => 'required|email|unique:clientes,email',
            'telefono' => 'nullable|string|max:20',
        ]);

        Cliente::create($request->all());

        return redirect()->route('clientes.create')->with('success', 'Cliente creado exitosamente.');
    }
}
