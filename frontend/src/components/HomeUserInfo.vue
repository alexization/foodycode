<template>
  <div class="user-info-wrapper">
    <div class="user-name-box">
      <div class="image-box">
        <img :src="UserIcon" width="35" />
      </div>
      <div class="user-name" v-text="`Welcome ${userName}!`"></div>
    </div>
    <div class="user-alg-box">
      <div class="alg-tag" v-for="allergy in allergyList" :key="allergy">
        {{ allergy }}
      </div>
    </div>
  </div>
</template>

<script>
import UserIcon from '@/assets/icon/user.png';

import axios from 'axios';

export default {
  data() {
    return {
      UserIcon,
      userName: '',
      allergyList: [],
    };
  },
  async created() {
    axios
      .get('/api/useralg')
      .then((response) => {
        response.data.useralgs.sort();
        this.userName = response.data.uname;
        this.allergyList = response.data.useralgs;
      })
      .catch((error) => {});
  },
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap');

.user-info-wrapper * {
  box-sizing: border-box;
}

.user-info-wrapper {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 110px;
  margin: 0px;
  background: #ffffff;
}

.user-name-box {
  display: inline-flex;
  justify-content: flex-start;
  width: 88%;
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
  font: 500 20px 'Noto Sans', sans-serif;
  text-align: left;
}

.user-alg-box {
  display: flex;
  justify-content: flex-start;
  overflow-x: auto;
  width: 100%;
  height: 55px;
  margin: 0px auto;
  padding: 0px 6% 10px;
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
  font: 400 16px 'Noto Sans', sans-serif;
  text-align: center;
  cursor: pointer;
}

.user-alg-box::-webkit-scrollbar {
  display: none;
}
</style>
