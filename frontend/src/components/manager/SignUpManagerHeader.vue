<template>
  <div class="SignUp-Head">
    <div class="arrow-back">
      <button>
        <img :src="arrow_back" width="25" @click="click_back" />
      </button>
    </div>
    <div class="logo-box">
      <div class="foody-logo">FOODY</div>
    </div>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";

export default {
  components: {},
  props: ["now_page"],
  data() {
    return {
      line,
      arrow_back,
    };
  },
  methods: {
    click_back() {
      const url = window.location.href.split("/");
      const url_href = url[url.length - 1];
      if (url_href === "manager-signup") {
        location.href = "#/mlogin";
      } else {
        location.href = "#/manager-signup";
      }
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
.SignUp-Head,
.SignUp-Head * {
  box-sizing: border-box;
}
.SignUp-Head {
  position: absolute;
  top: 0vh;
  z-index: 100;
  display: inline-flex;
  justify-content: flex-start;
  width: 100%;
  height: 70px;
  background: #ffffff;
}
.logo-box {
  position: relative;
  width: 60%;
  height: 100%;
}
.foody-logo {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-top: -30px; /* 로고 위치 조정 */
  margin-left: -50px;
  width: 100px;
  height: 40px;
  font-family: "Dangrek", cursive;
  font-size: 34px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
  color: #1c9181;
}

.arrow-back {
  position: relative;
  width: 20%;
  height: 100%;
}

button {
  position: absolute;
  left: 50%;
  top: 50%;
  margin-top: -20px;
  margin-left: -20px;
  width: 40px;
  height: 40px;
  border: none;
  background: none;
}
</style>
