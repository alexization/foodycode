<template>
  <div class="component">
    <div class="Img-Pos">
      <div class="image">
        <img :src="require(`@/assets/restaurant/${restaurantName}.png`)" />
      </div>
      <div class="Img-Box"></div>
    </div>

    <div class="title" v-text="title"></div>
  </div>
</template>

<script>
//import Default_image from "@/assets/restaurant/Hot Pot Stew Restaurant.png";

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
  },

  data() {
    return {};
  },
};
</script>

<style scoped>
.component,
.component * {
  box-sizing: border-box;
}
.component {
  width: 350px;
  height: 303px;
  position: relative;
}
.Img-Pos {
  position: absolute;
  inset: 0;
}
.image {
  background: rgba(0, 0, 0, 0.3);
  width: 350px;
  height: 233px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.Img-Box {
  opacity: 0.699999988079071;
  width: 350px;
  height: 303px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.title {
  color: #000000;
  text-align: left;
  font: 500 20px 'Noto Sans', sans-serif;
  position: absolute;
  left: 20px;
  top: 238px;
  width: 285px;
}
</style>
