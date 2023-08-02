import { createRouter, createWebHashHistory } from 'vue-router';

const routes = [
  {
    path: '/',
    name: 'home',
    component: () => import('../views/HomeView.vue'),
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/LoginView.vue'),
  },
  // {
  //   path: "/signup",
  //   name: "sign-up",
  //   component: () => import("../views/SignUpView.vue"),
  // },
  {
    path: '/signup',
    name: 'sign-up2',
    component: () => import('../views/SignUp2View.vue'),
  },
  {
    path: '/signup3',
    name: 'sign-up3',
    component: () => import('../views/SignUp3View.vue'),
  },
  {
    path: '/filteredmenu',
    name: 'filtered-menu',
    component: () => import('../views/FilteredMenuView.vue'),
  },
  {
    path: '/allmenu',
    name: 'all-menu',
    component: () => import('../views/AllMenuView.vue'),
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;
