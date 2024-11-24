<?php
namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

class ProductoController extends Controller
{
    public function apiIndex()
{
    $productos = Producto::where('stock', '>', 0)->get(); // Mostrar solo productos con stock disponible
    return response()->json($productos);
}

}


