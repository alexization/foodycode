<template>
  <div>
    <Header @toggleMenu="toggleMenu"></Header>
    <div class="user-info-box">
      <HomeUserInfo></HomeUserInfo>
    </div>
    <div class="restaurant-list">
      <div v-for="item in list" :key="item">
        <router-link :to="`/allmenu/${item.rest_name}`">
          <RestaurantCard
            :restaurantName="item.img_url"
            :title="item.rest_name"
            :telNum="item.tel"
          />
        </router-link>
      </div>
      <div class="space"></div>
    </div>

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
          <router-link
            :to="url"
            @click="callback(), session(name, $event)"
            class="link"
            >{{ name }}</router-link
          >
        </div>
      </nav>
    </Transition>
  </div>
</template>

<script>
import CloseIcon from "@/assets/icon/close.png";

import Header from "../components/Header.vue";
import HomeUserInfo from "../components/HomeUserInfo.vue";
import RestaurantCard from "../components/RestaurantCard.vue";

import axios from "axios";

export default {
  name: "HomeView",
  components: {
    Header,
    HomeUserInfo,
    RestaurantCard,
  },
  props: {},
  data() {
    return {
      CloseIcon,
      showMenu: false,
      list: "",
      navList: [{ name: "Login", url: "/login" }],
      login_status: false,
    };
  },
  async created() {
    axios.get("/api/main").then((response) => {
      const restaurant_list = response.data;
      this.list = restaurant_list;
      this.list.sort(() => Math.random() - 0.5);
    });
    axios.get("/api/users").then((response) => {
      this.login_status = response.data.is_logined;
      if (this.login_status === false) {
        this.navList = [{ name: "Login", url: "/login" }];
      } else {
        this.navList = [
          { name: "myFoody", url: "/myfoody" },
          { name: "Logout", url: "" },
        ];
      }
    });
  },
  methods: {
    async toggleMenu() {
      this.showMenu = !this.showMenu;
    },
    callback() {
      this.showMenu = false;
    },
    session(name) {
      if (name === "Logout") {
        axios.get("/api/logout").then((response) => {
          if (response.data.success) {
            window.location.reload(true);
          } else {
            alert("error!");
            window.location.reload(true);
          }
        });
      }
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.user-info-box {
  position: absolute;
  top: 70px;
  width: 100%;
  height: 110px;
  background: #ffffff;
}

.restaurant-list {
  position: absolute;
  top: 180px;
  overflow-y: auto;
  overflow-x: hidden;
  box-sizing: border-box;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 180px);
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.space {
  position: absolute;
  width: 100%;
  height: 30px;
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
</style>
