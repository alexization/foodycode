<template>
  <div>
    <Header @toggleMenu="toggleMenu"></Header>

    <div class="preview-text">
      <img src="@/assets/icon/visibility.png" />
      <span>Restaurant introduction screen preview</span>
    </div>
    <div class="restaurant-list">
      <RestaurantCard />
    </div>
    <div class="line"></div>

    <div class=""></div>

    <Transition name="fade">
      <div class="dimmer" v-if="showMenu" @click="toggleMenu"></div>
    </Transition>

    <Transition name="slide">
      <nav class="nav-bar" v-show="showMenu">
        <div>
          <button class="close" @click="toggleMenu">
            <img :src="CloseIcon" width="20" />
          </button>
        </div>
        <div v-for="{ name, url } in navList" :key="name">
          <router-link :to="url" @click="callback" class="link">{{
            name
          }}</router-link>
        </div>
      </nav>
    </Transition>
  </div>
</template>

<script>
import CloseIcon from "@/assets/icon/close.png";

import Header from "../components/manager/HeaderManager.vue";
import RestaurantCard from "../components/RestaurantCard.vue";

import axios from "axios";

export default {
  name: "HomeView",
  components: {
    Header,
    RestaurantCard,
  },
  props: {},
  data() {
    return {
      CloseIcon,
      showMenu: false,
      list: "",
      navList: [
        { name: "myFoody", url: "/myfoody" },
        { name: "Login", url: "/login" },
        { name: "Logout", url: "" },
      ],
    };
  },
  async created() {
    axios.get("/api/main").then((response) => {
      console.log(response.data);
      const restaurant_list = response.data;
      this.list = restaurant_list;
    });
  },
  methods: {
    async toggleMenu() {
      this.showMenu = !this.showMenu;
    },
    callback() {
      this.showMenu = false;
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.preview-text {
  position: absolute;
  top: 110px;
  left: 30px;
}
.preview-text img {
  width: 30px;
  height: 30px;
  vertical-align: middle;
}
.preview-text span {
  font: 600 15px "Noto Sans", sans-serif;
  text-align: center;
  color: #1c9181;
  margin-left: 8px;
}
.restaurant-list {
  position: absolute;
  top: 130px;
  box-sizing: border-box;
  width: 100%;
  height: 260px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.line {
  width: 100%;
  height: 2px;
  position: absolute;
  top: 400px;
  background: #a8a8a8;
}

/* 사이드 메뉴 열었을때 배경 흐리게 */
.dimmer {
  position: fixed;
  z-index: 1;
  top: 0px;
  left: 0px;
  width: 100%;
  height: 100%;
  background-color: #00000077;
  opacity: 1;
  transition: opacity 0.25s;
}

.nav-bar {
  position: absolute;
  z-index: 1;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  box-sizing: border-box;
  width: 60%;
  height: 100%;
  top: 0px;
  padding: 15px 8px;
  background-color: white;
}

.nav-bar > div {
  box-sizing: border-box;
  width: 100%;
  height: 44px;
  padding: 12px 0px;
  padding-left: 20px;
}

.link {
  font: 600 16px "Noto Sans", sans-serif;
  color: black;
  text-decoration: none;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.close {
  width: 20px;
  height: 20px;
  border: none;
  background: none;
  cursor: pointer;
}

@media screen and (min-width: 500px) {
}

::-webkit-scrollbar {
  display: none;
}

/* Transition navigation bar fade */
.fade-enter-active {
  transition: opacity 0.25s ease;
}
.fade-leave-active {
  transition: opacity 0.25s ease;
}

.fade-enter-from {
  opacity: 0;
}
.fade-enter-to {
  opacity: 1;
}
.fade-leave-from {
  opacity: 1;
}
.fade-leave-to {
  opacity: 0;
}

/* Transition navigation bar slide */
.slide-enter-active {
  transition: transform 0.25s ease, opacity 0.25s ease;
}
.slide-leave-active {
  transition: transform 0.25s ease, opacity 0.25s ease;
}

.slide-enter-from {
  opacity: 0;
  transform: translateX(-25%);
}
.slide-enter-to {
  opacity: 1;
}
.slide-leave-from {
  opacity: 1;
}
.slide-leave-to {
  opacity: 0;
  transform: translateX(-25%);
}
</style>
