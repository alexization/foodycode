<template>
  <div class="restuarant">
    <div class="image-box">
      <img :src="require(`@/assets/restaurant/${restaurantName}.png`)" />
    </div>
    <div class="info-box">
      <div class="title" v-text="title"></div>
      <div class="tel" v-text="telNum"></div>
      <div class="tel">
        <img :src="call" />
      </div>
    </div>
  </div>
</template>

<script>
import call from "@/assets/icon/call.png";
export default {
  props: {
    restaurantName: {
      type: String,
      default: "restaurant_init",
    },
    title: {
      type: String,
      default: "Untitled Restaurant",
    },
    telNum: {
      type: String,
      default: "033-742-5878",
    },
  },

  data() {
    return {
      call,
    };
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap");

.restuarant * {
  box-sizing: border-box;
}

.restuarant {
  position: relative;
  display: block;
  height: 240px;
  margin-top: 5px;
  padding: 10px 0px;
  background: #ffffff;
  cursor: pointer;
}

.image-box {
  width: 94%;
  height: 180px;
  margin: auto;
}

img {
  width: 94%;
  margin-left: 3%;
  height: 180px;
  border: 1px solid #d9d9d9;
  border-radius: 10px;
}

.info-box {
  position: relative;
  width: 94%;
  height: 60px;
  margin: auto;
}

.title {
  position: absolute;
  left: 2.6%;
  top: 5px;
  width: 94%;
  color: #000000;
  letter-spacing: 1.2px;
  font: 500 20px "Noto Sans", sans-serif;
  text-align: left;
}

.tel {
  position: absolute;
  left: 10.3%;
  top: 35px;
  width: 94%;
  color: #969595;
  letter-spacing: 0.3px;
  font: 400 15px "Noto Sans", sans-serif;
  text-align: left;
}

.tel img {
  position: absolute;
  left: -10%;
  top: 3px;
  width: 18px;
  height: 18px;
}

@media screen and (min-width: 768px) {
}
</style>
