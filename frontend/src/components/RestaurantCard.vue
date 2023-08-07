<template>
  <div class="component">
    <div class="Img-Pos">
      <div class="image">
        <img :src="require(`@/assets/restaurant/${restaurantName}.png`)" />
      </div>
      <div class="Img-Box"></div>
    </div>

    <div class="title" v-text="title"></div>
    <div class="tel" v-text="telNum"></div>
    <div class="tel">
      <img :src="call" />
    </div>
  </div>
</template>

<script>
import call from '@/assets/icon/call.png';
export default {
  props: {
    title: {
      type: String,
      default: 'Untitled Restaurant',
    },
    restaurantName: {
      type: String,
      default: 'Hot Pot Stew Restaurant',
    },
    telNum: {
      type: String,
      default: '033-742-5878',
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
.component,
.component * {
  box-sizing: border-box;
}
.component {
  width: 350px;
  height: 260px;
  position: relative;
  cursor: pointer;
}
.Img-Pos {
  position: absolute;
  inset: 0;
}
.image {
  background: rgba(0, 0, 0, 0.3);
  width: 350px;
  height: 188px;
  position: absolute;
  left: 0px;
  top: 10px;
  border-radius: 9px;
  flex-shrink: 0;
}
.image img {
  width: 350px;
  height: 188px;
  border-radius: 9px;
}
.Img-Box {
  opacity: 0.699999988079071;
  width: 350px;
  height: 250px;
  position: absolute;
  left: 0px;
  top: 10px;
}
.title {
  color: #000000;
  text-align: left;
  font: 500 20px 'Noto Sans', sans-serif;
  letter-spacing: 1.2px;
  position: absolute;
  left: 20px;
  top: 203px;
  width: 285px;
}
.tel {
  color: #969595;
  text-align: left;
  font: 400 15px 'Noto Sans', sans-serif;
  letter-spacing: 0.3px;
  position: absolute;
  left: 47px;
  top: 235px;
  width: 285px;
}
.tel img {
  position: absolute;
  left: -25px;
  top: 3px;
  width: 18px;
  height: 18px;
}
</style>
