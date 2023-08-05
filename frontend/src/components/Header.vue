<template>
  <div class="Header">
    <div class="background-box">
      <div class="foody-logo">FOODY</div>

      <button class="navigation-button">
        <img :src="navigation_button" width="32" />
      </button>

      <button class="qr-scanner-button">
        <img :src="qr_scanner_button" width="34" />
      </button>

      <div class="search">
        <img :src="search_icon" width="25" />
        <input type="text" placeholder="식당 이름 검색하기" />
      </div>
    </div>
  </div>
</template>

<script>
import search_icon from '@/assets/icon/search_icon.png';
import navigation_button from '@/assets/icon/navigation_button.png';
import qr_scanner_button from '@/assets/icon/qr_scanner_button.png';
export default {
  data() {
    return {
      search_icon,
      navigation_button,
      qr_scanner_button,
    };
  },
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Dangrek&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap');

.Header {
  height: 194px;
  position: sticky;
  right: 0px;
  left: 0px;
  top: 0px;
}
.background-box {
  background: #ffffff;
  width: 390px;
  height: 194px;
  position: sticky;
  left: 0px;
  top: 0px;
}
.foody-logo {
  color: #1c9181;
  text-align: left;
  font-family: 'Dangrek', cursive;
  font-size: 34px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
  position: absolute;
  left: 145px;
  top: 49px;
  width: 102px;
  height: 33px;
}
.navigation-button {
  position: absolute;
  left: 40px;
  top: 60px;
  width: 40px;
  height: 32px;
  border: none;
  background-color: transparent;
  overflow: visible;
}

.qr-scanner-button {
  border: none;
  position: absolute;
  left: 305px;
  top: 60px;
  width: 40px;
  height: 34px;
  background-color: transparent;
}

.search {
  position: absolute;
  left: 39px;
  top: 130px;
  width: 260px;
}

input {
  width: 100%;
  border: 1.5px solid #1c9181;
  border-radius: 23px;
  padding-top: 10px;
  padding-right: 12px;
  padding-bottom: 10px;
  padding-left: 40px;
  font-size: 14px;
}

.search > img {
  position: absolute;
  top: 7px;
  left: 12px;
  margin: 0;
}
.search input[type='text'] {
  font: 400 13px 'Noto Sans', sans-serif;
}
</style>
