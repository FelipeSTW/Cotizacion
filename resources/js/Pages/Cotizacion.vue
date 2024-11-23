<template>
<div class="container mx-auto py-16 px-8 h-full min-h-screen bg-gradient-to-br from-blue-900 via-purple-900 to-black text-white">
    <!-- Título Principal -->
    <h1 class="text-5xl font-extrabold text-center mb-20 tracking-widest text-cyan-300 drop-shadow-[0_5px_10px_rgba(0,255,255,0.6)] flex items-center justify-center gap-4 animate-pulse">
      <font-awesome-icon :icon="['fas', 'calculator']" class="text-cyan-300"/>
      Cotización de Productos
    </h1>

    <!-- Sección de Cliente -->
    <div class="glass-card p-10 rounded-3xl mb-16">
      <h2 class="text-3xl font-bold mb-8 text-cyan-300 flex items-center gap-4">
        <font-awesome-icon :icon="['fas', 'user-plus']" class="text-cyan-300"/>
        Seleccionar o Crear Cliente
      </h2>
      <div class="flex items-center gap-6">
        <!-- Input para buscar clientes -->
        <input type="text" placeholder="Buscar Cliente" class="glass-input w-full p-4 rounded-xl"/>
        <button class="btn-primary flex items-center gap-2">
          <font-awesome-icon :icon="['fas', 'user-plus']"/>
          Crear Cliente
        </button>
      </div>
    </div>

    <!-- Listado de Productos -->
    <div class="glass-card p-10 rounded-3xl mb-16">
      <h2 class="text-3xl font-bold mb-8 text-cyan-300 flex items-center gap-4">
        <font-awesome-icon :icon="['fas', 'box-open']" class="text-cyan-300"/>
        Listado de Productos
      </h2>
      <!-- Búsqueda de Productos -->
      <input type="text" placeholder="Buscar Producto" class="glass-input w-full p-4 mb-8 rounded-xl"/>

      <!-- Tabla de Productos -->
      <table class="w-full text-left border-collapse">
        <thead>
          <tr class="text-cyan-300 text-lg">
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Nombre del Producto</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Precio</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Stock Disponible</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Acciones</th>
          </tr>
        </thead>
        <tbody>
          <!-- Aquí se debería hacer un loop para los productos -->
          <tr class="hover:bg-white/10 transition-all text-white">
            <td class="px-6 py-4 border-b border-cyan-200">Producto Ejemplo 1</td>
            <td class="px-6 py-4 border-b border-cyan-200">$ 1000</td>
            <td class="px-6 py-4 border-b border-cyan-200">20</td>
            <td class="px-6 py-4 border-b border-cyan-200">
              <button class="btn-success flex items-center gap-2">
                <font-awesome-icon :icon="['fas', 'cart-plus']"/>
                Agregar
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Productos Seleccionados para la Cotización -->
    <div class="glass-card p-10 rounded-3xl mb-16">
      <h2 class="text-3xl font-bold mb-8 text-cyan-300 flex items-center gap-4">
        <font-awesome-icon :icon="['fas', 'shopping-cart']" class="text-cyan-300"/>
        Productos Seleccionados para la Cotización
      </h2>
      <!-- Tabla de Productos Seleccionados -->
      <table class="w-full text-left border-collapse">
        <thead>
          <tr class="text-cyan-300 text-lg">
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Producto</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Cantidad</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Precio Unitario</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Subtotal</th>
            <th class="px-6 py-4 border-b-2 border-cyan-200 font-bold">Acciones</th>
          </tr>
        </thead>
        <tbody>
          <!-- Loop para los productos seleccionados -->
          <tr class="hover:bg-white/10 transition-all text-white">
            <td class="px-6 py-4 border-b border-cyan-200">Producto Ejemplo 1</td>
            <td class="px-6 py-4 border-b border-cyan-200">
              <input type="number" class="glass-input w-20 p-2 rounded-lg" value="1"/>
            </td>
            <td class="px-6 py-4 border-b border-cyan-200">$ 1000</td>
            <td class="px-6 py-4 border-b border-cyan-200">$ 1000</td>
            <td class="px-6 py-4 border-b border-cyan-200">
              <button class="btn-danger flex items-center gap-2">
                <font-awesome-icon :icon="['fas', 'trash']"/>
                Eliminar
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Totalizador -->
    <div class="glass-card p-10 rounded-3xl mb-16">
      <h2 class="text-3xl font-bold mb-8 text-cyan-300 flex items-center gap-4">
        <font-awesome-icon :icon="['fas', 'dollar-sign']" class="text-cyan-300"/>
        Total de la Cotización
      </h2>
      <div class="flex justify-between items-center text-white">
        <p class="text-2xl font-semibold flex items-center gap-2">
          <font-awesome-icon :icon="['fas', 'list']"/>
          Total de Productos: <span class="text-cyan-400">3</span>
        </p>
        <p class="text-2xl font-semibold flex items-center gap-2">
          <font-awesome-icon :icon="['fas', 'money-bill-wave']"/>
          Precio Total: <span class="text-cyan-400">$ 3000</span>
        </p>
      </div>
    </div>

    <!-- Acciones Finales -->
    <div class="flex justify-end gap-8">
      <button class="btn-secondary flex items-center gap-2">
        <font-awesome-icon :icon="['fas', 'times']"/>
        Cancelar
      </button>
      <button class="btn-primary flex items-center gap-2">
        <font-awesome-icon :icon="['fas', 'save']"/>
        Guardar Borrador
      </button>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { faCalculator, faUserPlus, faBoxOpen, faShoppingCart, faDollarSign, faCartPlus, faTrash, faTimes, faSave, faList, faMoneyBillWave } from '@fortawesome/free-solid-svg-icons';
import { library } from '@fortawesome/fontawesome-svg-core';

// Agregar iconos a la biblioteca
library.add(faCalculator, faUserPlus, faBoxOpen, faShoppingCart, faDollarSign, faCartPlus, faTrash, faTimes, faSave, faList, faMoneyBillWave);

// Referencias a los datos del cliente y productos seleccionados
const clienteSeleccionado = ref(null);
const productosSeleccionados = reactive([]);
</script>

<style scoped>
/* Fondo animado con un gradiente impactante */
.container {
  background: linear-gradient(135deg, #515685, #84b9e7);
  animation: gradientShift 20s ease infinite alternate;
}

@keyframes gradientShift {
  0% {
    background-position: 0% 50%;
  }
  100% {
    background-position: 100% 50%;
  }
}

/* Estilo Glassmorphism para tarjetas */
.glass-card {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 20px;
  box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.18);
}

/* Estilo moderno para inputs */
.glass-input {
  background: rgba(255, 255, 255, 0.2);
  border: none;
  box-shadow: inset 0 4px 8px rgba(0, 0, 0, 0.2);
  color: white;
}

/* Botones con estilos modernos */
.btn-primary {
  background-color: #00bcd4;
  color: black;
  padding: 1rem 2rem;
  border-radius: 9999px;
  font-weight: bold;
  transition: all 0.3s;
}

.btn-secondary {
  background-color: #e57373;
  color: white;
  padding: 1rem 2rem;
  border-radius: 9999px;
  font-weight: bold;
  transition: all 0.3s;
}

.btn-success {
  background-color: #66bb6a;
  color: black;
  padding: 0.8rem 1.5rem;
  border-radius: 9999px;
  font-weight: bold;
  transition: all 0.3s;
}

.btn-danger {
  background-color: #f44336;
  color: white;
  padding: 0.8rem 1.5rem;
  border-radius: 9999px;
  font-weight: bold;
  transition: all 0.3s;
}

.btn-primary:hover, .btn-secondary:hover, .btn-success:hover, .btn-danger:hover {
  transform: scale(1.1);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}
</style>
