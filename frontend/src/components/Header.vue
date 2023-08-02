<template>
  <div class="header">
    <!--메뉴판 버튼-->    
    <div class="nav-wrap">
      <Button @click="toggleMenu" class="navigation-button" to="/login">
        <img :src="navigation_button" width="33"/>
      </Button>
    </div>
    <!--로고--> 
    <div class="logo-wrap">
      <div class="foody-logo">FOODY</div>
    </div>
    <!--QR촬영 버튼-->
    <div class="qr-wrap">
      <RouterLink class="qr-scanner-button" to="/login">
        <img :src="qr_scanner_button" width="33" />
      </RouterLink>
    </div>    
  </div>
</template>

<script>
import Vector from "@/assets/Vector.png";
import navigation_button from "@/assets/icon/navigation_button.png";
import qr_scanner_button from "@/assets/icon/qr_scanner_button.png";

export default {
  data() {
    return {
      Vector,
      navigation_button,
      qr_scanner_button,
      showMenu: false,
    };
  },
  
  methods: {
    async toggleMenu() {
      this.showMenu = !this.showMenu;

    }
  }
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");

.header {
  position: sticky;
  background-color: #ffffff;
  height: 64px;
  top: 0px;
  right: 0px;
  left: 0px;
}

.nav-wrap {
  width: 20%;
  height: 64px;
  float: left;
}

.navigation-button {
  width: 33px;
  height: 33px;
  padding: 1px;
  border: 1px solid;
  background-color: transparent;
}

.logo-wrap {
  width: 60%;
  height: 64px;  
  float: left;
}

.foody-logo {
  top: 10px;
  left: 91px;
  width: 102px;
  height: 40px;
  color: #1c9181;
  text-align: center;
  font-family: "Dangrek", cursive;
  font-size: 30px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
}

.qr-wrap {
  width: 20%;
  height: 64px;
  float: left;
}

.qr-scanner-button {    
  top: 20px;
  right: 20px;
  width: 33px;
  height: 33px;
  padding: 1px;
  background-color: transparent;  
}
</style>
