<template>
  <div class="header">
    <div class="nav-box">
      <button @click="this.$emit('toggleMenu')">
        <img :src="NavBtnImage" width="32" />
      </button>
    </div>
    <div class="logo-box">
      <div class="foody-logo">FOODY</div>
    </div>
    <div class="edit-button" v-if="this.edit_status === false">
      <button @click="click_edit">
        <img src="@/assets/icon/edit.png" width="32" />
      </button>
    </div>
    <div class="edit-button" v-else>
      <button @click="click_edit">
        <img src="@/assets/icon/save.png" width="32" />
      </button>
    </div>
  </div>
</template>

<script>
import NavBtnImage from "@/assets/icon/navigation_button.png";

export default {
  data() {
    return {
      NavBtnImage,
      edit_status: false,
    };
  },
  methods: {
    click_edit() {
      if (this.edit_status === true) {
        console.log("Post Data");
      }
      this.edit_status = !this.edit_status;
      this.$emit("change_status");
    },
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
  position: sticky;
  top: 0px;
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
  cursor: pointer;
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

.edit-button {
  position: relative;
  width: 20%;
  height: 100%;
}
</style>
