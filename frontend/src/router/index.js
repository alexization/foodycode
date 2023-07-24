import { createRouter, createWebHashHistory } from "vue-router";

const routes = [
  {
    path: "/",
    name: "MainPage",
    component: () => import("../components/MainPage.vue"),
  },
  {
    path: "/login",
    name: "LoginPage",
    component: () => import("../components/LoginPage.vue"),
  },
  {
    path: "/signup",
    name: "SignUpPage",
    component: () => import("../components/SignUpPage.vue"),
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;
