<template>
  <div class="AlgMenuCard">
    <div class="Card-Rectangle"></div>

    <div class="Img-Box">
      <img :src="require(`@/assets/menu/${menuImg}.png`)" />
    </div>

    <div class="Menu-name" v-text="menuName"></div>
    <div class="alg">
      <img :src="warning" />
      <div class="alg-name" v-text="algName"></div>
    </div>
    <div class="Menu-Ing" v-text="menuIng"></div>
    <div class="Price" v-text="menuPrice + ' KRW'"></div>
  </div>
</template>

<script>
import warning from "../assets/icon/warning.png";
export default {
  data() {
    return {
      warning,
    };
  },
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
    algName: {
      type: String,
      default: "Fork",
    },
  },
};
</script>

<style scoped>
.AlgMenuCard,
.AlgMenuCard * {
  box-sizing: border-box;
}
.AlgMenuCard {
  width: 97.4vw;
  height: 20.1vh;
  position: relative;
}
.Card-Rectangle {
  background: rgba(215, 215, 215, 0.6);
  border-style: solid;
  border-color: rgba(215, 215, 215, 0.6);
  border-radius: 10px;
  border-width: 1px;
  width: 97.4vw;
  height: 20.1vh;
  position: absolute;
  cursor: pointer;
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
  opacity: 0.7;
}
.Menu-name {
  color: rgba(0, 0, 0, 0.3);
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
  color: rgba(0, 0, 0, 0.3);
}
.Price {
  color: #6060603e;
  text-align: right;
  font: 600 14px "Noto Sans", sans-serif;
  position: absolute;
  left: 29.7vw;
  top: 6.2vh;
  width: 31vw;
  height: 2vh;
}
.alg img {
  width: 4.6vw;
  height: 2.1vh;
  position: absolute;
  top: 19.2vw;
  left: 1.2vh;
}
.alg div {
  position: absolute;
  top: 18.7vw;
  left: 3.9vh;
  font: 600 15px "Noto Sans", sans-serif;
  text-align: left;
  color: red;
}
</style>
