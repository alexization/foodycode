<template>
  <div class="user-info-wrapper">
    <div class="user-name-box">
      <div class="image-box">
        <img :src="UserIcon" width="35" />
      </div>
      <div class="user-name" v-text="`Welcome ${userName}!`"></div>
    </div>
    <div class="user-alg-box">
      <div class="alg-tag" v-for="allergy in allergyList" :key="allergy">{{ allergy }}</div>
    </div>
  </div>
</template>

<script>
import UserIcon from "@/assets/icon/user.png";

import axios from "axios";

export default {
  data() {
    return {
      UserIcon,
      userName: "sunghyun",
      allergyList: ["pork", "beef", "milk", "apple", "egg", "peach", "orange", "water"],      
    };
  },
  //async created() {
   // axios.get("/api/main").then((response) => {
     // console.log(response.data);
      //response.data.menu_alg.sort();
      //this.userName = response.data.user_name;
      //this.allergyList = response.data.user_alg;
    //});
 // },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap");

.user-info-wrapper * {
  box-sizing: border-box;
}

.user-info-wrapper {
  position: absolute;
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 110px;
  background: #ffffff;
}

.user-name-box {
  display: inline-flex;
  justify-content: flex-start;
  width: 360px;
  height: 55px;
  margin: 0px auto;
}

.image-box {
  position: relative;
  width: 45px;
  padding: 10px 0px;
  padding-left: 10px;
}

.user-name {
  position: relative;
  width: 315px;
  padding: 12px 0px;
  padding-left: 10px;
  color: #000000;
  letter-spacing: 1.2px;
  font: 500 20px "Noto Sans", sans-serif;
  text-align: left;
}

.user-alg-box {
  display: flex;
  justify-content: flex-start;
  overflow-x: auto;
  width: 360px;
  height: 55px;
  margin: 0px auto;
  padding: 0px 10px 20px;
}

.alg-tag {  
  position: relative;  
  height: 35px;
  padding: 5px;
  border: 1px solid #d9d9d9;
  border-radius: 10px;
  margin: 0px 5px;
  background: #1c9181;
  color: #ffffff;
  letter-spacing: 1.2px;
  font: 500 20px "Noto Sans", sans-serif;
  text-align: center;
}
</style>
