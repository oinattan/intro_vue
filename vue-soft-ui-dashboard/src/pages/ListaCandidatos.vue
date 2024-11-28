<template>
  <div class="flex h-screen overflow-hidden">
    <!-- Sidebar -->
    <Sidebar :sidebarOpen="sidebarOpen" @close-sidebar="sidebarOpen = false" />

    <!-- Content area -->
    <div class="relative flex flex-col flex-1 overflow-y-auto overflow-x-hidden">
      <!-- Site header -->
      <Header :sidebarOpen="sidebarOpen" @toggle-sidebar="sidebarOpen = !sidebarOpen" />

      <main class="grow">
        <div class="px-4 sm:px-6 lg:px-8 py-8 w-full max-w-9xl mx-auto">
          <!-- Dashboard actions -->
          <div class="sm:flex sm:justify-between sm:items-center mb-8">
            <!-- Left: Title -->
            <div class="mb-4 sm:mb-0">
              <h1 class="text-2xl md:text-3xl text-gray-800 dark:text-gray-100 font-bold">Candidatos</h1>
            </div>
            <!-- Right: Actions -->
            <div class="grid grid-flow-col sm:auto-cols-max justify-start sm:justify-end gap-2">
              <!-- Filter button -->
              <FilterButton align="right" />
              <!-- Datepicker built with flatpickr -->
              <Datepicker align="right" />
              <!-- Add view button -->
              <button class="btn bg-gray-900 text-gray-100 hover:bg-gray-800 dark:bg-gray-100 dark:text-gray-800 dark:hover:bg-white">
                <svg class="fill-current shrink-0 xs:hidden" width="16" height="16" viewBox="0 0 16 16">
                  <path d="M15 7H9V1c0-.6-.4-1-1-1S7 .4 7 1v6H1c-.6 0-1 .4-1 1s.4 1 1 1h6v6c0 .6.4 1 1 1s1-.4 1-1V9h6c.6 0 1-.4 1-1s-.4-1-1-1z" />
                </svg>
                <span class="max-xs:sr-only">Filtrar</span>
              </button>
            </div>
          </div>

          <!-- Cards -->
          <div class="grid grid-cols-12 gap-6">
            <!-- Line chart (Acme Plus) -->
            <CandidatosCard01 />
            <!-- Line chart (Acme Advanced) -->
            <DashboardCard02 />
            <!-- Line chart (Acme Professional) -->
            <DashboardCard03 />
            <!-- Bar chart (Direct vs Indirect) -->
            <CandidatosCard04 />
            <!-- Line chart (Real Time Value) -->
          </div>
        </div>
      </main>

      <Banner />
    </div>
  </div>
</template>

<script>
import { ref, onMounted } from 'vue'
import axios from 'axios'
import Sidebar from '../partials/Sidebar.vue'
import Header from '../partials/Header.vue'
import FilterButton from '../components/DropdownFilter.vue'
import Datepicker from '../components/Datepicker.vue'
import CandidatosCard01 from '../partials/candidatos/CandidatosCard01.vue'
import DashboardCard02 from '../partials/dashboard/DashboardCard02.vue'
import DashboardCard03 from '../partials/dashboard/DashboardCard03.vue'
import CandidatosCard04 from '../partials/candidatos/CandidatosCard04.vue'
import Banner from '../partials/Banner.vue'
import BarChart from '../charts/BarChart01.vue'

export default {
  name: 'Candidatos',
  components: {
    Sidebar,
    Header,
    FilterButton,
    Datepicker,
    CandidatosCard01,
    DashboardCard02,
    DashboardCard03,
    CandidatosCard04,
    Banner,
    BarChart
  },
  setup() {
    const sidebarOpen = ref(false)
    const chartData = ref({
      labels: [],
      datasets: []
    })

    // Método para buscar os dados do gráfico
    const fetchChartData = async () => {
      try {
        const response = await axios.get('http://localhost:5173/api.php')
        console.log(response.data) // Para ver os dados recebidos
        chartData.value = response.data
      } catch (error) {
        console.error('Erro ao carregar os dados do gráfico', error)
      }
    }

    // Chama a função para carregar os dados assim que o componente for montado
    onMounted(fetchChartData)

    return {
      sidebarOpen,
      chartData
    }
  }
}
</script>
