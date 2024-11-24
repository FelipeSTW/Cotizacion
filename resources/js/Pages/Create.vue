<template>
  <modal :show="showModal" @close="closeModal">
    <h1 class="text-2xl font-bold mb-6">Crear Cliente Yute</h1>
    <form @submit.prevent="submit">
      <div class="mb-4">
        <label for="nombre" class="block text-sm font-medium text-gray-700">Nombre</label>
        <input type="text" id="nombre" v-model="form.nombre" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required />
      </div>
      <div class="mb-4">
        <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
        <input type="email" id="email" v-model="form.email" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required />
      </div>
      <div class="mb-4">
        <label for="telefono" class="block text-sm font-medium text-gray-700">Teléfono</label>
        <input type="text" id="telefono" v-model="form.telefono" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" />
      </div>
      <div class="flex justify-end items-center gap-4">
        <div v-if="isLoading" class="text-blue-500 font-medium">Guardando...</div>
        <button type="submit" :disabled="isLoading" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-700">
          Guardar Cliente
        </button>
      </div>
    </form>
  </modal>
</template>

<script setup>
import { ref } from 'vue';
import Modal from '@/Components/Modal.vue';
import { useForm } from '@inertiajs/inertia-vue3';
import Toastify from 'toastify-js';
import "toastify-js/src/toastify.css"; 

const showModal = ref(false);
const isLoading = ref(false);
const form = useForm({
  nombre: '',
  email: '',
  telefono: '',
});

const openModal = () => {
  showModal.value = true;
};

const closeModal = () => {
  showModal.value = false;
  resetForm();
};

const resetForm = () => {
  form.nombre = '';
  form.email = '';
  form.telefono = '';
};

const submit = () => {
  isLoading.value = true; 

  form.post(route('clientes.store'), {
    onSuccess: () => {

      Toastify({
        text: "Cliente guardado correctamente",
        duration: 5000, 
        gravity: "top", 
        position: "center", 
        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)", 
        className: "toast-success",
        stopOnFocus: true, 
      }).showToast();

      
      setTimeout(() => {
        closeModal();
      }, 500); 
    },
    onError: (errors) => {
      Toastify({
        text: errors.nombre ? "El usuario ya se encuentra registrado en nuestros registros" : "El usuario ya se encuentra registrado en nuestros registros",
        duration: 5000, 
        gravity: "top",
        position: "center",
        backgroundColor: "linear-gradient(to right, #FF5F6D, #FFC371)", 
        className: "toast-error",
      }).showToast();
    },
    onFinish: () => {
      isLoading.value = false; 
    },
  });
};
</script>




<style>
.bg-white.rounded-lg.shadow-xl.w-full.max-w-lg.p-6.relative {
  text-align: center;
}
.mb-4 {
  margin-top: 15px;
}
input#email {
  margin-left: 10px;
}
button.absolute.top-2.right-2.text-white.bg-red-600.hover\:bg-red-700.rounded-full.px-4.py-2.shadow-md.transition.duration-300.ease-in-out.flex.items-center.gap-2 {
  background: red;
  cursor: pointer;
}
button.bg-blue-500.text-white.px-4.py-2.rounded-md.hover\:bg-blue-700 {
  margin-top: 15px;
  background-color: greenyellow;
  cursor: pointer;
}

</style>
