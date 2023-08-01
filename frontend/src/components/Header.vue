<template>
  <div class="Header">
    <div class="background-box">
      <div class="foody-logo">FOODY</div>

      <button class="navigation-button">
        <img :src="navigation_button" width="32" />
      </button>

      <button class="qr-scanner-button">
        <img :src="qrscanner_button" width="34" />
      </button>

      <div>
        <input
          class="search-bar"
          type="text"
          placeholder="식당 이름 검색하기"
        />
      </div>
    </div>
  </div>
</template>

<script>
import Vector from "@/assets/Vector.png";
import navigation_button from "@/assets/icon/navigation_button.png";
import qrscanner_button from "@/assets/icon/qrscanner_button.png";
export default {
  data() {
    return {
      Vector,
      navigation_button,
      qrscanner_button,
    };
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");

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
  font-family: "Dangrek", cursive;
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

.search-bar {
  border-radius: 23px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1.5px;
  width: 304px;
  height: 35px;
  position: absolute;
  left: 39px;
  top: 144px;
}
</style>
