<template>
  <div class="MenuCard">
    <div class="Card-Rectangle"></div>

    <div class="Img-Box">
      <img :src="require(`@/assets/menu/${menuImg}.png`)" />
    </div>

    <div class="Menu-name" v-text="menuName"></div>

    <div class="Menu-Ing" v-text="menuIng"></div>
    <div class="Price" v-text="menuPrice + ' KRW'"></div>
  </div>
</template>

<script>
export default {
  props: {
    menuName: {
      type: String,
      default: "Soy Sauce Bulgogi",
    },
    menuImg: {
      type: String,
      default: "soy-sauce-bulgogi",
    },
    menuIng: {
      type: String,
      default:
        "Rich Soybean Paste Soup braised with dried anchovy, zucchini, onion, potato, garlic, mushroom, tofu, green onion",
    },
    menuPrice: {
      type: String,
      default: "9000",
    },
  },
};
</script>

<style scoped>
.MenuCard,
.MenuCard * {
  box-sizing: border-box;
}
.MenuCard {
  width: 97.4vw;
  height: 20.1vh;
  margin-bottom: 1vh;
  position: relative;
}
.Card-Rectangle {
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.1);
  box-shadow: 2px 2px 1px 1px rgba(205, 205, 205, 0.2);
  border-radius: 10px;
  border-width: 1px;
  width: 97.4vw;
  height: 20.1vh;
  position: absolute;
  cursor: pointer;
  padding-top: 1.2vh;
}
.Img-Box {
  background: rgba(0, 0, 0, 0.3);
  width: 32.8vw;
  height: 10.2vh;
  border-radius: 10px;
  position: absolute;
  left: 62.6vw;
  top: 1.2vh;
}
.Img-Box img {
  width: 32.8vw;
  height: 10.2vh;
  border-radius: 10px;
}
.Menu-name {
  color: #000000;
  text-align: left;
  font: 600 15px "Noto Sans", sans-serif;
  position: absolute;
  left: 3.8vw;
  top: 2.4vh;
  width: 56.9vw;
  height: 2.6vh;
}
.Menu-Ing {
  text-align: left;
  font: 300 12px "Noto Sans", sans-serif;
  position: absolute;
  left: 3.8vw;
  top: 12.1vh;
  width: 89.7vw;
  height: 5.8vh;
}
.Price {
  color: #606060;
  text-align: right;
  font: 600 14px "Noto Sans", sans-serif;
  position: absolute;
  left: 29.7vw;
  top: 6.2vh;
  width: 31vw;
  height: 2vh;
}
</style>
