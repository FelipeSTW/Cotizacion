<template>
  <div v-if="show" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
    <div class="bg-white rounded-lg shadow-xl w-full max-w-lg p-6 relative">
        <button @click="close" class="absolute top-2 right-2 text-white bg-red-600 hover:bg-red-700 rounded-full px-4 py-2 shadow-md transition duration-300 ease-in-out flex items-center gap-2">
  <font-awesome-icon :icon="['fas', 'times']"/>
  Cancelar
</button>
      <slot></slot>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const props = defineProps({
  show: {
    type: Boolean,
    required: true,
  },
});

const emit = defineEmits(['close']);

const close = () => {
  emit('close');
};
</script>

