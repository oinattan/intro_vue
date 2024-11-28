<template>
  <div class="flex flex-col col-span-full bg-white dark:bg-gray-800 shadow-sm rounded-xl">
    <header class="px-5 py-4 border-b border-gray-100 dark:border-gray-700/60">
      <h2 class="font-semibold text-gray-800 dark:text-gray-100">Lista de Candidatos</h2>
    </header>
    <!-- Gráfico com dados dinâmicos -->
    <BarChart :data="chartData" width="595" height="248" />
  </div>
</template>

<script>
import axios from 'axios';
import BarChart from '../../charts/BarChart01.vue' // Certifique-se de que o caminho esteja correto

export default {
  components: {
    BarChart
  },
  data() {
    return {
      chartData: {
        labels: [],
        datasets: []
      }
    };
  },
  mounted() {
    // Chama o método que obtém os dados do PHP quando o componente é montado
    this.fetchChartData();
  },
  methods: {
    async fetchChartData() {
      try {
        // Fazendo a requisição para o PHP
        const response = await axios.get('http://localhost:5173/api.php');
        
        // Logando a resposta para verificar o formato dos dados
        console.log(response.data);

        // Atribuindo os dados recebidos ao chartData
        this.chartData = response.data;
      } catch (error) {
        console.error('Erro ao carregar os dados do gráfico', error);
      }
    }
  }
};
</script>
