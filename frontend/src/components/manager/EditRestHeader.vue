<template>
  <div class="header">
    <div class="nav-box">
      <button @click="prev_page">
        <img src="@/assets/icon/arrow-back.png" width="32" />
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
export default {
  data() {
    return {
      edit_status: false,
    };
  },
  methods: {
    click_edit() {
      if (this.edit_status === true) {
        this.$emit("post_data");
      }
      this.edit_status = !this.edit_status;
      this.$emit("change_status");
    },
    prev_page() {
      location.href = "#/manager";
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
  position: absolute;
  top: 0px;
  display: inline-flex;
  justify-content: flex-start;
  width: 100%;
  height: 70px;
  background: #ffffff;
  box-shadow: rgba(0, 0, 0, 0.4) 0 0 5px 0;
  z-index: 20;
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
