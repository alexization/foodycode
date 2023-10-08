<template>
  <div>
    <Header @toggleMenu="toggleMenu"></Header>
    <div class="manager-page">
      <div class="line"></div>
      <div class="manager-name">{{ this.manager_name }}님 어서오세요</div>
      <div class="button-group">
        <div class="run-toggle">
          <span class="open-close-text" v-if="manage_status === false"
            >가게 오픈하기</span
          >
          <span class="open-close-text" v-else>가게 문 닫기</span>
          <input type="checkbox" id="switch" @click="open_close" />
          <label for="switch"></label>
        </div>
        <div class="manage-button-group">
          <div class="manage-restaurant" @click="edit_restaurant">
            <img src="@/assets/icon/shop.png" />
            <span>가게 관리</span>
          </div>
          <div class="manage-menu" @click="edit_menu">
            <img src="@/assets/icon/fork_knife.png" />
            <span>메뉴 관리</span>
          </div>
        </div>
        <div class="order-status" @click="order_status">
          <img src="@/assets/icon/order_white.png" />
          <span>주문 현황</span>
        </div>
        <div
          class="black-box"
          v-if="manage_status === false"
          @click="disable_order"
        >
          <img src="@/assets/icon/lock.png" />
        </div>
      </div>
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

import Header from "@/components/manager/HomeHeader.vue";
import axios from "axios";

export default {
  name: "HomeManager",
  components: { Header },
  props: {},
  data() {
    return {
      CloseIcon,
      manage_status: false,
      manager_name: "",
      showMenu: false,
      navList: [{ name: "Logout", url: "/mlogin" }],
    };
  },
  methods: {
    async toggleMenu() {
      this.showMenu = !this.showMenu;
    },
    callback() {
      this.showMenu = false;
    },
    // 백엔드 작업 필요. 세션 작업 필요.
    session(name) {
      // if (name === "Logout") {
      //   axios.get("/api/logout").then((response) => {
      //     if (response.data.success) {
      //       window.location.reload(true);
      //     } else {
      //       alert("error!");
      //       window.location.reload(true);
      //     }
      //   });
      // }
    },
    edit_restaurant() {
      location.href = "#/restedit";
    },
    edit_menu() {
      location.href = "#/menuedit";
    },
    open_close() {
      this.manage_status = !this.manage_status;
    },
    disable_order() {
      alert("가게를 오픈해야합니다.");
    },
    order_status() {
      alert("Comming Soon..");
    },
  },
  async created() {
    axios.get("/api/restuser").then((response) => {
      this.manager_name = response.data.ceo_name;
    });
  },
};
</script>
<style scoped>
.manager-page * {
  box-sizing: border-box;
}
.manager-page {
  top: 70px;
  background: #ffffff;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 70px);
  position: absolute;
  overflow-y: auto;
}
.line {
  box-shadow: rgba(0, 0, 0, 0.4) 0 0 5px 0;
  width: 100%;
  height: 1px;
  position: relative;
}
.manager-name {
  color: #000000;
  text-align: left;
  font: 500 18px "Noto Sans KR", sans-serif;
  position: absolute;
  top: 30px;
  padding-left: 30px;
  width: 100%;
}
.button-group {
  position: absolute;
  display: flex;
  top: 70px;
  height: 385px;
  width: 100%;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}
.manage-button-group {
  width: 100%;
  display: flex;
  align-items: center;
  flex-direction: row;
  justify-content: space-evenly;
}
.run-toggle {
  background: #1c9181;
  border-radius: 18px;
  width: 90%;
  height: 85px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.open-close-text {
  width: 50%;
  color: #ffffff;
  text-align: center;
  font: 500 20px "Noto Sans KR", sans-serif;
}
.manage-toggle {
  background: #fefefe;
  border-radius: 37px;
  width: 100px;
  height: 33px;
}

.manage-restaurant {
  background: #ececec;
  border-radius: 18px;
  width: 40%;
  height: 155px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.manage-restaurant img {
  width: 50px;
  height: 50px;
}
.manage-restaurant span {
  color: #1c9181;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 1.2px;
  margin-top: 20px;
}
.manage-menu {
  background: #ececec;
  border-radius: 18px;
  width: 40%;
  height: 155px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.manage-menu img {
  width: 50px;
  height: 50px;
}
.manage-menu span {
  color: #1c9181;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 1.2px;
  margin-top: 20px;
}
.order-status {
  background: #1c9181;
  border-radius: 18px;
  width: 90%;
  height: 85px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.order-status img {
  width: 40px;
  height: 35px;
}
.order-status span {
  color: #fff;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 1.2px;
  margin-left: 20px;
}
input[type="checkbox"] {
  height: 0;
  width: 0;
  visibility: hidden;
}
.black-box {
  background: rgba(0, 0, 0, 0.7);
  border-radius: 18px;
  width: 90%;
  height: 85px;
  position: absolute;
  top: 300px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.black-box img {
  width: 50px;
  height: 50px;
}
label {
  width: 50%;
  cursor: pointer;
  text-indent: -9999px;
  width: 100px;
  height: 34px;
  background: #6c6c6c;
  display: block;
  border-radius: 100px;
  position: relative;
}

label:after {
  content: "";
  position: absolute;
  top: 5px;
  left: 5px;
  width: 24px;
  height: 24px;
  background: #d2d2d2;
  border-radius: 90px;
  transition: 0.3s;
}

input:checked + label {
  background: white;
}

input:checked + label:after {
  left: calc(100% - 5px);
  transform: translateX(-100%);
  background: #1c9181;
}

label:active:after {
  width: 30px;
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
  padding-left: 27px;
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
