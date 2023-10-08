<template>
  <div class="row-group">
    <div class="nav-bar">
      <button class="nav-button" @click="this.$emit('toggleMenu')">
        <img src="@/assets/icon/navigation_button.png" />
      </button>
    </div>
    <div calss="foody-logo">
      <div class="foody">FOODY</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");

.row-group {
  position: absolute;
  top: 0;
  width: 100%;
  height: 70px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  z-index: 1;
}
.nav-bar {
  width: 30%;
}
.nav-button {
  border: none;
  background: none;
  width: 32px;
  height: 32px;
  margin-left: 30px;
  margin-top: 13px;
}
.nav-button img {
  width: 100%;
  height: 100%;
}
.foody-logo {
  width: 70%;
}

.foody {
  width: 100px;
  height: 40px;
  margin-right: 30px;
  margin-bottom: 10px;
  font-family: "Dangrek", cursive;
  font-size: 34px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
  color: #1c9181;
}
</style>
