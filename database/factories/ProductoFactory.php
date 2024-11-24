<?php

namespace Database\Factories;

use App\Models\Producto;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductoFactory extends Factory
{
    protected $model = Producto::class;

    public function definition()
    {
        return [
            'nombre' => $this->faker->word(),
            'precio' => $this->faker->randomFloat(2, 10, 1000), // Precio entre 10 y 1000
            'stock' => $this->faker->numberBetween(0, 100), // Stock entre 0 y 100
        ];
    }
}
