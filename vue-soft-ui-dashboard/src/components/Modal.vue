<template>
    <div v-if="isVisible" class="fixed inset-0 flex items-center justify-center bg-gray-900 bg-opacity-70" style="z-index: 9999;">
      
        <div class="bg-white p-6 rounded-lg shadow-lg max-w-sm w-full">
        <slot :candidato="candidato"></slot>
        <div class="mt-4 text-right">
          <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" style="margin-right: 1rem;">Gerar Ficha</button>
          <button @click="close" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">Fechar</button>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      candidato: {
        type: Object,
        default: null // Recebe o candidato selecionado
      }
    },
    data() {
      return {
        isVisible: false // Estado do modal (visível ou não)
      };
    },
    methods: {
      open() {
        this.isVisible = true;
      },
      close() {
        this.isVisible = false;
      }
    }
  };
  </script>
  
  <style scoped>
  /* Estilos para o modal */
  .fixed {
    position: fixed;
  }
  .bg-opacity-50 {
    opacity: 0.5;
  }
  </style>  