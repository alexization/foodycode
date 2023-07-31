import { createRouter, createWebHashHistory } from "vue-router";

const routes = [
  {
    path: "/",
    name: "MainPage",
    component: () => import("../views/MainPage.vue"),
  },
  {
    path: "/login",
    name: "LoginPage",
    component: () => import("../views/LoginPage.vue"),
  },
  {
    path: "/signup",
    name: "SignUpPage",
    component: () => import("../views/SignUpPage.vue"),
  },
  {
    path: "/signup2",
    name: "SignUpPage2",
    component: () => import("../views/SignUpPage2.vue"),
  },
  {
    path: "/signup3",
    name: "SignUpPage3",
    component: () => import("../views/SignUpPage3.vue"),
  },
  {
    path: "/fileteredmenu",
    name: "FilteredMenuPage",
    component: () => import("../views/FilteredMenuPage.vue"),
  },
  {
    path: "/allmenu",
    name: "AllMenuPage",
    component: () => import("../views/AllMenuPage.vue"),
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;
