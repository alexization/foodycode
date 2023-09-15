<template>
  <div class="background">
    <MyFoodyHeader></MyFoodyHeader>
    <!--<hr class="line" />-->
    <div class="menu-title-box">
      <div class="menu-title">Account Setting</div>
      <!--<div class="user-name">{{ userName }}</div>-->
    </div>
    <div class="menu-box">
      <div v-for="{ name, url_name } in menuList" :key="name">
        <router-link :to="`/myfoody/${url_name}`" class="menu-content">
          <div class="menu-name">
            {{ name }}
          </div>
          <div class="arrow-img">
            <img :src="arrow" width="15" />
          </div>
        </router-link>
        <hr class="menu-line" />
      </div>
    </div>
    <div class="user-alg-box">
      <div class="alg-tag" v-for="allergy in allergyList" :key="allergy">
        {{ allergy }}
      </div>
    </div>
    <!--<div class="end-menu"></div>-->
  </div>
</template>

<script>
import arrow from "@/assets/icon/arrow.png";

import MyFoodyHeader from "../components/MyFoodyHeader.vue";

import axios from "axios";

export default {
  name: "MyFoodyView",
  components: {
    MyFoodyHeader,
  },
  props: {},
  data() {
    return {
      arrow,
      //userName: "",
      allergyList: [],
      menuList: [
        { name: "Edit User Name", url_name: "user-name" },
        { name: "Edit My Allergy", url_name: "my-allergy" },  // 메뉴가 추가되더라도 항상 마지막에 배치
      ],
    };
  },
  async created() {
    axios
      .get("/api/useralg")
      .then((response) => {
        response.data.useralgs.sort();
        //this.userName = response.data.uname;
        this.allergyList = response.data.useralgs;
      })
      .catch((error) => {});
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.background * {
  box-sizing: border-box;
}

.background {
  width: 100%;
  height: 100%;
  background: #ffffff; /*#d9d9d9;*/
}

/*
.line {
  position: absolute;
  box-sizing: border-box;
  top: 70px;
  width: 100%;
  border: solid 1px;
  color: #ccc;
}
*/

.menu-title-box {
  position: relative;
  top: 70px;
  display: inline-flex;
  width: 100%;
  height: 70px;
  background: rgba(28, 145, 129, 1); /*#ffffff;*/
  font: 600 16px "Noto Sans", sans-serif;
  color: #ffffff;
}

.menu-title {
  position: relative;
  width: 40%;
  margin: auto 0px;
  margin-left: 9%;
}

.user-name {
  position: relative;
  width: 60%;
  margin: auto 0px;
  font: 600 18px "Noto Sans", sans-serif;
  color: #1c9181;
}

.menu-box {
  position: relative;
  top: 70px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  width: 100%;
  height: 144px;
}

.menu-content {
  position: relative;
  display: inline-flex;
  width: 100%;
  height: 70px;
  background: #ffffff;
  font: 600 16px "Noto Sans", sans-serif;
  color: #525252;
  text-decoration: none;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.menu-name {
  position: relative;
  width: 90%;
  margin: auto 0px;
  margin-left: 9%;
}

.arrow-img {
  position: relative;
  width: 10%;
  margin: auto 0px;
  margin-right: 10px;
  color: #525252;
}

.menu-line {
  position: relative;
  box-sizing: border-box;
  width: 100%;
  border: solid 1px;
  color: #d9d9d9;
}

.user-alg-box {
  position: relative;
  top: 70px;
  display: flex;
  justify-content: flex-start;
  overflow-x: auto;
  box-sizing: border-box;
  width: 100%;
  height: 70px;
  padding: 17px 7%;
  background: #ffffff;
}

.alg-tag {
  position: relative;
  height: 35px;
  padding: 4px 10px 0px;
  border: none;
  border-radius: 15px;
  margin: 0px 2.5px;
  background: rgba(28, 145, 129, 0.1);
  color: rgba(28, 145, 129, 1);
  letter-spacing: 1.2px;
  font: 400 16px "Noto Sans", sans-serif;
  text-align: center;
}

/* 
.end-menu {
  position: relative;
  top: 284px;
  display: inline-flex;
  width: 100%;
  height: 70px;
  background: rgba(28, 145, 129, 1); 
} */

.user-alg-box::-webkit-scrollbar {
  display: none;
}
</style>
