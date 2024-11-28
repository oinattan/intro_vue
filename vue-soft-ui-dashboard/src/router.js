import { createRouter, createWebHistory } from 'vue-router'
import Dashboard from './pages/Dashboard.vue'
import ListaCandidatos from './pages/ListaCandidatos.vue'

// Definindo o routerHistory com createWebHistory
const routerHistory = createWebHistory()

// Criando o router
const router = createRouter({
  history: routerHistory,
  routes: [
    {
      path: '/',
      component: Dashboard, // Componente que será carregado na rota /Dashboard
    },
    {
      path: '/lista-candidatos',
      component: ListaCandidatos, // Componente que será carregado na rota /lista-candidatos
    },
  ]
})

export default router
