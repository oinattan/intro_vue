<template>
  <div class="min-w-fit">
    <!-- Sidebar backdrop (mobile only) -->
    <div class="fixed inset-0 bg-gray-900 bg-opacity-30 z-40 lg:hidden lg:z-auto transition-opacity duration-200"
      :class="sidebarOpen ? 'opacity-100' : 'opacity-0 pointer-events-none'" aria-hidden="true"></div>

    <!-- Sidebar -->
    <div id="sidebar" ref="sidebar"
      class="flex lg:!flex flex-col absolute z-40 left-0 top-0 lg:static lg:left-auto lg:top-auto lg:translate-x-0 h-[100dvh] overflow-y-scroll lg:overflow-y-auto no-scrollbar w-64 lg:w-20 lg:sidebar-expanded:!w-64 2xl:!w-64 shrink-0 bg-white dark:bg-gray-800 p-4 transition-all duration-200 ease-in-out"
      :class="[variant === 'v2' ? 'border-r border-gray-200 dark:border-gray-700/60' : 'rounded-r-2xl shadow-sm', sidebarOpen ? 'translate-x-0' : '-translate-x-64']">

      <!-- Sidebar header -->
      <div class="flex justify-between mb-10 pr-3 sm:px-2">
        <!-- Close button -->
        <button ref="trigger" class="lg:hidden text-gray-500 hover:text-gray-400" @click.stop="$emit('close-sidebar')"
          aria-controls="sidebar" :aria-expanded="sidebarOpen">
          <span class="sr-only">Fechar</span>
          <svg class="w-6 h-6 fill-current" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path d="M10.7 18.7l1.4-1.4L7.8 13H20v-2H7.8l4.3-4.3-1.4-1.4L4 12z" />
          </svg>
        </button>
        <!-- Logo -->
        <router-link class="block" to="/">
          <svg class="fill-violet-500" xmlns="http://www.w3.org/2000/svg" width="32" height="32">
            <path
              d="M31.956 14.8C31.372 6.92 25.08.628 17.2.044V5.76a9.04 9.04 0 0 0 9.04 9.04h5.716ZM14.8 26.24v5.716C6.92 31.372.63 25.08.044 17.2H5.76a9.04 9.04 0 0 1 9.04 9.04Zm11.44-9.04h5.716c-.584 7.88-6.876 14.172-14.756 14.756V26.24a9.04 9.04 0 0 1 9.04-9.04ZM.044 14.8C.63 6.92 6.92.628 14.8.044V5.76a9.04 9.04 0 0 1-9.04 9.04H.044Z" />
          </svg>
        </router-link>
      </div>

      <!-- Links -->
      <div class="space-y-8">
        <!-- Pages group -->
        <div>
          <h3 class="text-xs uppercase text-gray-400 dark:text-gray-500 font-semibold pl-3">
            <span class="hidden lg:block lg:sidebar-expanded:hidden 2xl:hidden text-center w-6"
              aria-hidden="true">•••</span>
            <span class="lg:hidden lg:sidebar-expanded:block 2xl:block">Menu</span>
          </h3>
          <ul class="mt-3">
            <!-- Dashboard -->
            <SidebarLinkGroup v-slot="parentLink"
              :activeCondition="currentRoute.fullPath === '/' || currentRoute.fullPath.includes('dashboard')">
              <router-link to="/">
                <div class="flex items-center justify-between">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="currentRoute.fullPath === '/' || currentRoute.fullPath.includes('dashboard') ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path
                        d="M5.936.278A7.983 7.983 0 0 1 8 0a8 8 0 1 1-8 8c0-.722.104-1.413.278-2.064a1 1 0 1 1 1.932.516A5.99 5.99 0 0 0 2 8a6 6 0 1 0 6-6c-.53 0-1.045.076-1.548.21A1 1 0 1 1 5.936.278Z" />
                      <path
                        d="M6.068 7.482A2.003 2.003 0 0 0 8 10a2 2 0 1 0-.518-3.932L3.707 2.293a1 1 0 0 0-1.414 1.414l3.775 3.775Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Dashboard</span>
                  </div>
                </div>
              </router-link>
            </SidebarLinkGroup>

            <!-- Candidatos -->
            <SidebarLinkGroup v-slot="parentLink"
              :activeCondition="currentRoute.fullPath.includes('/lista-candidatos')">
              <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                :class="currentRoute.fullPath.includes('/lista-candidatos') ? '' : 'hover:text-gray-900 dark:hover:text-white'"
                href="#0" @click.prevent="parentLink.handleClick(); sidebarExpanded = true">
                <div class="flex items-center justify-between">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="currentRoute.fullPath.includes('/lista-candidatos') ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path
                        d="M9 6.855A3.502 3.502 0 0 0 8 0a3.5 3.5 0 0 0-1 6.855v1.656L5.534 9.65a3.5 3.5 0 1 0 1.229 1.578L8 10.267l1.238.962a3.5 3.5 0 1 0 1.229-1.578L9 8.511V6.855ZM6.5 3.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0Zm4.803 8.095c.005-.005.01-.01.013-.016l.012-.016a1.5 1.5 0 1 1-.025.032ZM3.5 11c.474 0 .897.22 1.171.563l.013.016.013.017A1.5 1.5 0 1 1 3.5 11Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Candidatos
                    </span>
                  </div>
                  <!-- Icon -->
                  <div class="flex shrink-0 ml-2">
                    <svg class="w-3 h-3 shrink-0 ml-1 fill-current text-gray-400 dark:text-gray-500"
                      :class="parentLink.expanded && 'rotate-180'" viewBox="0 0 12 12">
                      <path d="M5.9 11.4L.5 6l1.4-1.4 4 4 4-4L11.3 6z" />
                    </svg>
                  </div>
                </div>
              </a>
              <div class="lg:hidden lg:sidebar-expanded:block 2xl:block">
                <ul class="pl-8 mt-1" :class="!parentLink.expanded && 'hidden'">
                  <router-link to="/lista-candidatos" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Lista
                          de Candidatos</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/lista-candidatos/avaliacao" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Avaliações</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/lista-candidatos/candidatos-aprovados" custom
                    v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Candidatos
                          Aprovados</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/lista-candidatos/entrevistas" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Entrevistas</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/lista-candidatos/perfil-candidatos" custom
                    v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Perfil
                          de Cadidato</span>
                      </a>
                    </li>
                  </router-link>
                </ul>
              </div>
            </SidebarLinkGroup>
            <!-- Empresas -->
            <SidebarLinkGroup v-slot="parentLink" :activeCondition="currentRoute.fullPath.includes('community')">
              <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                :class="currentRoute.fullPath.includes('community') ? '' : 'hover:text-gray-900 dark:hover:text-white'"
                href="#0" @click.prevent="parentLink.handleClick(); sidebarExpanded = true">
                <div class="flex items-center justify-between">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="currentRoute.fullPath.includes('community') ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path
                        d="M12 1a1 1 0 1 0-2 0v2a3 3 0 0 0 3 3h2a1 1 0 1 0 0-2h-2a1 1 0 0 1-1-1V1ZM1 10a1 1 0 1 0 0 2h2a1 1 0 0 1 1 1v2a1 1 0 1 0 2 0v-2a3 3 0 0 0-3-3H1ZM5 0a1 1 0 0 1 1 1v2a3 3 0 0 1-3 3H1a1 1 0 0 1 0-2h2a1 1 0 0 0 1-1V1a1 1 0 0 1 1-1ZM12 13a1 1 0 0 1 1-1h2a1 1 0 1 0 0-2h-2a3 3 0 0 0-3 3v2a1 1 0 1 0 2 0v-2Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Empresas</span>
                  </div>
                  <!-- Icon -->
                  <div class="flex shrink-0 ml-2">
                    <svg class="w-3 h-3 shrink-0 ml-1 fill-current text-gray-400 dark:text-gray-500"
                      :class="parentLink.expanded && 'rotate-180'" viewBox="0 0 12 12">
                      <path d="M5.9 11.4L.5 6l1.4-1.4 4 4 4-4L11.3 6z" />
                    </svg>
                  </div>
                </div>
              </a>
              <div class="lg:hidden lg:sidebar-expanded:block 2xl:block">
                <ul class="pl-8 mt-1" :class="!parentLink.expanded && 'hidden'">
                  <router-link to="/community/users-tabs" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Lista
                          de Empresas</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/community/users-tiles" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Vinculo
                          de Vagas</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/community/profile" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Vinculo
                          de Candidatos</span>
                      </a>
                    </li>
                  </router-link>
                </ul>
              </div>
            </SidebarLinkGroup>
            <!-- Finance -->
            <SidebarLinkGroup v-slot="parentLink" :activeCondition="currentRoute.fullPath.includes('finance')">
              <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                :class="currentRoute.fullPath.includes('finance') ? '' : 'hover:text-gray-900 dark:hover:text-white'"
                href="#0" @click.prevent="parentLink.handleClick(); sidebarExpanded = true">
                <div class="flex items-center justify-between">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="currentRoute.fullPath.includes('finance') ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path
                        d="M6 0a6 6 0 0 0-6 6c0 1.077.304 2.062.78 2.912a1 1 0 1 0 1.745-.976A3.945 3.945 0 0 1 2 6a4 4 0 0 1 4-4c.693 0 1.344.194 1.936.525A1 1 0 1 0 8.912.779 5.944 5.944 0 0 0 6 0Z" />
                      <path d="M10 4a6 6 0 1 0 0 12 6 6 0 0 0 0-12Zm-4 6a4 4 0 1 1 8 0 4 4 0 0 1-8 0Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Financeiro</span>
                  </div>
                  <!-- Icon -->
                  <div class="flex shrink-0 ml-2">
                    <svg class="w-3 h-3 shrink-0 ml-1 fill-current text-gray-400 dark:text-gray-500"
                      :class="parentLink.expanded && 'rotate-180'" viewBox="0 0 12 12">
                      <path d="M5.9 11.4L.5 6l1.4-1.4 4 4 4-4L11.3 6z" />
                    </svg>
                  </div>
                </div>
              </a>
              <div class="lg:hidden lg:sidebar-expanded:block 2xl:block">
                <ul class="pl-8 mt-1" :class="!parentLink.expanded && 'hidden'">
                  <router-link to="/finance/cards" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Pedidos</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/finance/transactions" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Pagamentos</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/finance/transaction-details" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Detalhes
                          de Pagamento</span>
                      </a>
                    </li>
                  </router-link>
                </ul>
              </div>
            </SidebarLinkGroup>
            <!-- Job Board -->
            <SidebarLinkGroup v-slot="parentLink" :activeCondition="currentRoute.fullPath.includes('job')">
              <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                :class="currentRoute.fullPath.includes('job') ? '' : 'hover:text-gray-900 dark:hover:text-white'"
                href="#0" @click.prevent="parentLink.handleClick(); sidebarExpanded = true">
                <div class="flex items-center justify-between">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="currentRoute.fullPath.includes('job') ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path
                        d="M6.753 2.659a1 1 0 0 0-1.506-1.317L2.451 4.537l-.744-.744A1 1 0 1 0 .293 5.207l1.5 1.5a1 1 0 0 0 1.46-.048l3.5-4ZM6.753 10.659a1 1 0 1 0-1.506-1.317l-2.796 3.195-.744-.744a1 1 0 0 0-1.414 1.414l1.5 1.5a1 1 0 0 0 1.46-.049l3.5-4ZM8 4.5a1 1 0 0 1 1-1h6a1 1 0 1 1 0 2H9a1 1 0 0 1-1-1ZM9 11.5a1 1 0 1 0 0 2h6a1 1 0 1 0 0-2H9Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Cursos</span>
                  </div>
                  <!-- Icon -->
                  <div class="flex shrink-0 ml-2">
                    <svg class="w-3 h-3 shrink-0 ml-1 fill-current text-gray-400 dark:text-gray-500"
                      :class="parentLink.expanded && 'rotate-180'" viewBox="0 0 12 12">
                      <path d="M5.9 11.4L.5 6l1.4-1.4 4 4 4-4L11.3 6z" />
                    </svg>
                  </div>
                </div>
              </a>
              <div class="lg:hidden lg:sidebar-expanded:block 2xl:block">
                <ul class="pl-8 mt-1" :class="!parentLink.expanded && 'hidden'">
                  <router-link to="/job/job-listing" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Cursos
                          disponíveis</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/job/job-post" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Agenda
                          de Cursos</span>
                      </a>
                    </li>
                  </router-link>
                </ul>
              </div>
            </SidebarLinkGroup>
            <!-- Tasks -->
            <SidebarLinkGroup v-slot="parentLink" :activeCondition="currentRoute.fullPath.includes('tasks')">
              <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                :class="currentRoute.fullPath.includes('tasks') ? '' : 'hover:text-gray-900 dark:hover:text-white'"
                href="#0" @click.prevent="parentLink.handleClick(); sidebarExpanded = true">
                <div class="flex items-center justify-between">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="currentRoute.fullPath.includes('tasks') ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path
                        d="M7.586 9H1a1 1 0 1 1 0-2h6.586L6.293 5.707a1 1 0 0 1 1.414-1.414l3 3a1 1 0 0 1 0 1.414l-3 3a1 1 0 1 1-1.414-1.414L7.586 9ZM3.075 4.572a1 1 0 1 1-1.64-1.144 8 8 0 1 1 0 9.144 1 1 0 0 1 1.64-1.144 6 6 0 1 0 0-6.856Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Tarefas</span>
                  </div>
                  <!-- Icon -->
                  <div class="flex shrink-0 ml-2">
                    <svg class="w-3 h-3 shrink-0 ml-1 fill-current text-gray-400 dark:text-gray-500"
                      :class="parentLink.expanded && 'rotate-180'" viewBox="0 0 12 12">
                      <path d="M5.9 11.4L.5 6l1.4-1.4 4 4 4-4L11.3 6z" />
                    </svg>
                  </div>
                </div>
              </a>
              <div class="lg:hidden lg:sidebar-expanded:block 2xl:block">
                <ul class="pl-8 mt-1" :class="!parentLink.expanded && 'hidden'">
                  <router-link to="/tasks/kanban" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Kanban</span>
                      </a>
                    </li>
                  </router-link>
                  <router-link to="/tasks/list" custom v-slot="{ href, navigate, isExactActive }">
                    <li class="mb-1 last:mb-0">
                      <a class="block transition truncate"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-500/90 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200'"
                        :href="href" @click="navigate">
                        <span
                          class="text-sm font-medium lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">List</span>
                      </a>
                    </li>
                  </router-link>
                </ul>
              </div>
            </SidebarLinkGroup>
            <!-- Messages -->
            <router-link to="/messages" custom v-slot="{ href, navigate, isExactActive }">
              <li
                class="pl-4 pr-3 py-2 rounded-lg mb-0.5 last:mb-0 bg-[linear-gradient(135deg,var(--tw-gradient-stops))]"
                :class="isExactActive && 'from-violet-500/[0.12] dark:from-violet-500/[0.24] to-violet-500/[0.04]'">
                <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                  :class="isExactActive ? '' : 'hover:text-gray-900 dark:hover:text-white'" :href="href"
                  @click="navigate">
                  <div class="flex items-center justify-between">
                    <div class="grow flex items-center">
                      <svg class="shrink-0 fill-current"
                        :class="isExactActive ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                        <path
                          d="M13.95.879a3 3 0 0 0-4.243 0L1.293 9.293a1 1 0 0 0-.274.51l-1 5a1 1 0 0 0 1.177 1.177l5-1a1 1 0 0 0 .511-.273l8.414-8.414a3 3 0 0 0 0-4.242L13.95.879ZM11.12 2.293a1 1 0 0 1 1.414 0l1.172 1.172a1 1 0 0 1 0 1.414l-8.2 8.2-3.232.646.646-3.232 8.2-8.2Z" />
                        <path d="M10 14a1 1 0 1 0 0 2h5a1 1 0 1 0 0-2h-5Z" />
                      </svg>
                      <span
                        class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Mensagens</span>
                    </div>
                    <!-- Badge -->
                    <div class="flex flex-shrink-0 ml-2">
                      <span
                        class="inline-flex items-center justify-center h-5 text-xs font-medium text-white bg-violet-400 px-2 rounded">4</span>
                    </div>
                  </div>
                </a>
              </li>
            </router-link>

            <!-- Calendar -->
            <router-link to="/calendar" custom v-slot="{ href, navigate, isExactActive }">
              <li
                class="pl-4 pr-3 py-2 rounded-lg mb-0.5 last:mb-0 bg-[linear-gradient(135deg,var(--tw-gradient-stops))]"
                :class="isExactActive && 'from-violet-500/[0.12] dark:from-violet-500/[0.24] to-violet-500/[0.04]'">
                <a class="block text-gray-800 dark:text-gray-100 truncate transition"
                  :class="isExactActive ? '' : 'hover:text-gray-900 dark:hover:text-white'" :href="href"
                  @click="navigate">
                  <div class="flex items-center">
                    <svg class="shrink-0 fill-current"
                      :class="isExactActive ? 'text-violet-500' : 'text-gray-400 dark:text-gray-500'"
                      xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                      <path d="M5 4a1 1 0 0 0 0 2h6a1 1 0 1 0 0-2H5Z" />
                      <path
                        d="M4 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4H4ZM2 4a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4Z" />
                      <path
                        d="M4 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4H4ZM2 4a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4Z" />
                    </svg>
                    <span
                      class="text-sm font-medium ml-4 lg:opacity-0 lg:sidebar-expanded:opacity-100 2xl:opacity-100 duration-200">Calendario</span>
                  </div>
                </a>
              </li>
            </router-link>


          </ul>
        </div>

      </div>

      <!-- Expand / collapse button -->
      <div class="pt-3 hidden lg:inline-flex 2xl:hidden justify-end mt-auto">
        <div class="w-12 pl-4 pr-3 py-2">
          <button class="text-gray-400 hover:text-gray-500 dark:text-gray-500 dark:hover:text-gray-400"
            @click.prevent="sidebarExpanded = !sidebarExpanded">
            <span class="sr-only">Expandir/Fechar</span>
            <svg class="shrink-0 fill-current text-gray-400 dark:text-gray-500 sidebar-expanded:rotate-180"
              xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
              <path
                d="M15 16a1 1 0 0 1-1-1V1a1 1 0 1 1 2 0v14a1 1 0 0 1-1 1ZM8.586 7H1a1 1 0 1 0 0 2h7.586l-2.793 2.793a1 1 0 1 0 1.414 1.414l4.5-4.5A.997.997 0 0 0 12 8.01M11.924 7.617a.997.997 0 0 0-.217-.324l-4.5-4.5a1 1 0 0 0-1.414 1.414L8.586 7M12 7.99a.996.996 0 0 0-.076-.373Z" />
            </svg>
          </button>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
import { ref, onMounted, onUnmounted, watch } from 'vue'
import { useRouter } from 'vue-router'

import SidebarLinkGroup from './SidebarLinkGroup.vue'

export default {
  name: 'Sidebar',
  props: [
    'sidebarOpen',
    'variant'
  ],
  components: {
    SidebarLinkGroup,
  },
  setup(props, { emit }) {

    const trigger = ref(null)
    const sidebar = ref(null)

    const storedSidebarExpanded = localStorage.getItem('sidebar-expanded')
    const sidebarExpanded = ref(storedSidebarExpanded === null ? false : storedSidebarExpanded === 'true')

    const currentRoute = useRouter().currentRoute.value

    // close on click outside
    const clickHandler = ({ target }) => {
      if (!sidebar.value || !trigger.value) return
      if (
        !props.sidebarOpen ||
        sidebar.value.contains(target) ||
        trigger.value.contains(target)
      ) return
      emit('close-sidebar')
    }

    // close if the esc key is pressed
    const keyHandler = ({ keyCode }) => {
      if (!props.sidebarOpen || keyCode !== 27) return
      emit('close-sidebar')
    }

    onMounted(() => {
      document.addEventListener('click', clickHandler)
      document.addEventListener('keydown', keyHandler)
    })

    onUnmounted(() => {
      document.removeEventListener('click', clickHandler)
      document.removeEventListener('keydown', keyHandler)
    })

    watch(sidebarExpanded, () => {
      localStorage.setItem('sidebar-expanded', sidebarExpanded.value)
      if (sidebarExpanded.value) {
        document.querySelector('body').classList.add('sidebar-expanded')
      } else {
        document.querySelector('body').classList.remove('sidebar-expanded')
      }
    })

    return {
      trigger,
      sidebar,
      sidebarExpanded,
      currentRoute
    }
  },
}
</script>s