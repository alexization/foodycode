<template>
  <div class="restuarant">
    <div class="first-row">
      <div class="image-box">
        <img :src="require(`@/assets/restaurant/${restaurantName}.png`)" />
      </div>
    </div>
    <div class="second-row">
      <div class="info-box">
        <div class="second-first-row">
          <div class="title" v-text="title"></div>
        </div>
        <div class="second-second-row">
          <div class="tel">
            <img :src="call" />
          </div>
          <div class="tel-number" v-text="telNum"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import call from '@/assets/icon/call.png';
export default {
  props: {
    restaurantName: {
      type: String,
      default: 'restaurant_init',
    },
    title: {
      type: String,
      default: 'Default Restaurant Name',
    },
    telNum: {
      type: String,
      default: '033-766-0000',
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
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap');

.restuarant * {
  box-sizing: border-box;
}

.restuarant {
  position: relative;
  display: flex;
  width: 100%;
  height: 240px;
  margin-top: 5px;
  padding: 10px 0px;
  background: #ffffff;
  cursor: pointer;
  flex-direction: column;
}
.first-row {
  width: 94%;
  height: 180px;
  margin: auto;
}
.second-row {
  width: 100%;
  height: 60px;
}
.image-box {
  width: 100%;
  height: 100%;
}
.image-box img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
}
.tel img {
  width: 94%;
  margin-left: 3%;
  height: 180px;
  border: 1px solid #d9d9d9;
  border-radius: 10px;
}
.info-box {
  display: flex;
  flex-direction: column;
}
.second-second-row {
  display: flex;
  height: 30px;
  align-items: center;
}

.info-box {
  position: relative;
  width: 92%;
  height: 60px;
  margin: auto;
}

.title {
  width: 94%;
  height: 30px;
  color: #000000;
  letter-spacing: 1.2px;
  font: 500 20px 'Noto Sans', sans-serif;
  text-align: left;
  text-decoration: none;
}

.tel-number {
  color: #969595;
  letter-spacing: 0.3px;
  font: 400 15px 'Noto Sans', sans-serif;
  text-align: left;
  margin-left: 5px;
  margin-bottom: 7px;
}

.tel img {
  width: 18px;
  height: 18px;
}

@media screen and (min-width: 768px) {
}
</style>
