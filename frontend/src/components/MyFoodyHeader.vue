<template>
  <div class="my-info-header">
    <div class="arrow-back-box">
      <button>
        <img :src="arrow_back" width="25" @click="click_back" />
      </button>
    </div>
    <div class="title-box">
      <div class="my-foody-title">{{ title }}</div>
    </div>
    <div class="home-box">
      <button>
        <img :src="home" width="30" @click="click_home" />
      </button>
    </div>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import home from "@/assets/icon/home.png";

export default {
  props: {
    title: {
      type: String,
      default: "myFoody",
    },
  },
  data() {
    return {
      arrow_back,
      home,
    };
  },
  methods: {
    click_back() {
      this.$router.go(-1);
    },
    click_home() {
      this.$router.push({ path: "/" });
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.my-info-header * {
  box-sizing: border-box;
}

.my-info-header {
  position: absolute;
  top: 0px;
  display: inline-flex;
  justify-content: flex-start;
  width: 100%;
  height: 70px;
  background: #ffffff;
}

.arrow-back-box {
  position: relative;
  width: 20%;
  height: 100%;
}

button {
  position: absolute;
  left: 50%;
  top: 50%;
  margin-top: -15px;
  margin-left: -15px;
  width: 30px;
  height: 30px;
  border: none;
  background: none;
}

.title-box {
  position: relative;
  width: 60%;
  height: 100%;
}

.my-foody-title {
  position: absolute;
  top: 50%;
  margin-top: -15px;
  width: 100%;
  height: 30px;
  font: 600 20px "Noto Sans", sans-serif;
  color: #000000;
  text-align: center;
}

.home-box {
  position: relative;
  width: 20%;
  height: 100%;
}
</style>
