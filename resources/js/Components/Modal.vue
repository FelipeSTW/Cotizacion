<template>
  <div v-if="show" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
    <div class="bg-white rounded-lg shadow-xl w-full max-w-lg p-6 relative">
      <button @click="close" class="absolute top-2 right-2 text-gray-400 hover:text-gray-600">
        <font-awesome-icon :icon="['fas', 'times']" />
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

<style scoped>
/* Personaliza los estilos del modal según tus necesidades */
</style>
