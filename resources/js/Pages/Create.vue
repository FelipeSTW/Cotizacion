<template>
  <modal :show="showModal" @close="closeModal">
    <h1 class="text-2xl font-bold mb-6">Crear Cliente</h1>
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
      <div class="flex justify-end">
        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-700">Guardar Cliente</button>
      </div>
    </form>
  </modal>
</template>

<script setup>
import { ref } from 'vue';
import Modal from '@/Components/Modal.vue';
import { useForm } from '@inertiajs/inertia-vue3';

const showModal = ref(false);
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
};

const submit = () => {
  form.post(route('clientes.store'), {
    onSuccess: () => {
      closeModal();
    },
  });
};
</script>
