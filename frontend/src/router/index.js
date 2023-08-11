import { createRouter, createWebHashHistory } from "vue-router";

const routes = [
  {
    path: "/",
    name: "home",
    component: () => import("../views/HomeView.vue"),
    meta: {
      title: "Home FOODY",
    },
  },
  {
    path: "/login",
    name: "login",
    component: () => import("../views/LoginView.vue"),
    meta: {
      title: "Login FOODY",
    },
  },
  {
    path: "/signup",
    name: "sign-up",
    component: () => import("../views/ServiceView.vue"),
    meta: {
      title: "Sign Up Step1 FOODY",
    },
  },
  {
    path: "/signup2",
    name: "sign-up2",
    component: () => import("../views/SignUpView.vue"),
    meta: {
      title: "Sign Up Step2 FOODY",
    },
  },
  {
    path: "/filteredmenu",
    name: "filtered-menu",
    component: () => import("../views/FilteredMenuView.vue"),
    meta: {
      title: "Filtered Menu FOODY",
    },
  },
  {
    path: "/allmenu/:rest_name_url_param",
    name: "all-menu",
    component: () => import("../views/AllMenuView.vue"),
    meta: {
      title: "Menu FOODY",
    },
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

// View 타이틀 동적 생성
router.afterEach((to, from) => {
  const title = to.meta.title === undefined ? "FOODY" : to.meta.title;
  if (title) document.title = title;
});

export default router;
