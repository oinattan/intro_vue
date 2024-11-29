<template>
  <div class="flex flex-col col-span-full bg-white dark:bg-gray-800 shadow-sm rounded-xl">
    <header class="px-5 py-4 border-b border-gray-100 dark:border-gray-700/60">
      <h2 class="font-semibold text-gray-800 dark:text-gray-100">Lista de Candidatos</h2>
    </header>

    <!-- Exibição dos candidatos -->
    <div class="px-5 py-4">
      <ul class="space-y-4">
        <li v-for="candidato in candidatos" :key="candidato.id"
          class="bg-gray-100 dark:bg-gray-700 p-4 rounded-lg shadow-md">
          <div style="text-align: end;">
            <button @click="abrirDetalhes(candidato)" style=" margin-right: 1rem;"><svg
                class="h-8 w-8 text-white-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0zM10 7v3m0 0v3m0-3h3m-3 0H7" />
              </svg>
            </button>
            <button><svg class="h-8 w-8 text-red-500" width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
                stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                <path stroke="none" d="M0 0h24v24H0z" />
                <line x1="4" y1="7" x2="20" y2="7" />
                <line x1="10" y1="11" x2="10" y2="17" />
                <line x1="14" y1="11" x2="14" y2="17" />
                <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12" />
                <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" />
              </svg></button>
          </div>
          <p><strong>Nome:</strong> {{ candidato.nome }}</p>
          <p><strong>Email:</strong> {{ candidato.email }}</p>
          <p><strong>Data de Inscrição:</strong> {{ candidato.data_envio }}</p>
        </li>
      </ul>
    </div>

    <!-- Modal Component -->
    <Modal ref="modal" :candidato="candidatoSelecionado">
      <template #default="{ candidato }">
        <h3 class="text-lg font-semibold">Detalhes do Candidato</h3>
        <p><strong>Nome:</strong> {{ candidato?.nome }}</p>
        <p><strong>Email:</strong> {{ candidato?.email }}</p>
        <p><strong>Data de Inscrição:</strong> {{ candidato?.data_envio }}</p>
        <p><strong>Telefone:</strong> {{ candidato?.telefone }}</p>
        <p><strong>Endereço:</strong> {{ candidato?.endereco }}</p>
      </template>
    </Modal>
  </div>
</template>

<script>
import axios from 'axios';
import Modal from '../../components/Modal.vue'; // Certifique-se do caminho correto

export default {
  components: {
    Modal
  },
  data() {
    return {
      candidatos: [], // Lista de candidatos
      candidatoSelecionado: null // Candidato selecionado para exibir no modal
    };
  },
  mounted() {
    // Chama o método para buscar os dados assim que o componente for montado
    this.fetchCandidatos();
  },
  methods: {
    // Método para buscar os dados dos candidatos
    async fetchCandidatos() {
      try {
        const response = await axios.get('http://localhost/intro_vue/vue-soft-ui-dashboard/src/api.php');
        this.candidatos = response.data;
      } catch (error) {
        console.error('Erro ao carregar dados dos candidatos', error);
      }
    },
    // Método para abrir o modal com os detalhes do candidato
    abrirDetalhes(candidato) {
      this.candidatoSelecionado = candidato; // Define o candidato selecionado
      this.$refs.modal.open(); // Abre o modal
    }
  }
};
</script>

<style scoped>
/* Estilos para o card dos candidatos */
li {
  border: 1px solid #e0e0e0;
  background-color: #fafafa;
  padding: 16px;
  border-radius: 8px;
}

li p {
  margin: 4px 0;
}
</style>