<template>
  <div class="header">
    <div class="nav-box">
      <button>
        <img :src="navigation_button" width="32" />
      </button>
    </div>
    <div class="logo-box">
      <div class="foody-logo">FOODY</div>
    </div>  
    <div class="qr-box">
      <button>
        <img :src="qr_scanner_button" width="32" />
      </button>
    </div>
  </div>
</template>

<script>
import navigation_button from "@/assets/icon/navigation_button.png";
import qr_scanner_button from "@/assets/icon/qr_scanner_button.png";
export default {
  data() {
    return {
      navigation_button,
      qr_scanner_button,
    };
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap");

.header * {
  box-sizing: border-box;
}

.header {
  position: fixed;
  top: 0px;
  left: 0px;
  display: inline-flex;
  justify-content: flex-start;  
  width: 100%;
  height: 70px;
  background: #ffffff;
}

.nav-box {
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

.logo-box {
  position: relative;
  width: 60%;
  height: 100%;
}

.foody-logo {
  position: absolute; 
  top: 50%;
  left: 50%;    
  margin-top: -30px;    /* 로고 위치 조정 */
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

.qr-box {
  position: relative;
  width: 20%;
  height: 100%;
}

@media screen and (min-width: 768px) {
}
</style>