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
    <div class="Price" v-text="menuPrice"></div>
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
  background: rgba(215, 215, 215, 0.569);
  width: 390px;
  height: 160px;
  position: relative;
}
.Card-Rectangle {
  border-style: solid;
  border-color: #138373;
  border-width: 1px;
  width: 390px;
  height: 160px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.Img-Box {
  background: rgba(0, 0, 0, 0.3);
  width: 128px;
  height: 86px;
  border-radius: 10px;
  position: absolute;
  left: 252px;
  top: 10px;
}
.Img-Box img {
  width: 128px;
  height: 86px;
  border-radius: 10px;
  opacity: 0.7;
}
.Menu-name {
  color: rgba(0, 0, 0, 0.3);
  text-align: left;
  font: 600 15px "Noto Sans", sans-serif;
  position: absolute;
  left: 20px;
  top: 20px;
  width: 222px;
  height: 22px;
}
.Menu-Ing {
  text-align: left;
  font: 300 12px "Noto Sans", sans-serif;
  position: absolute;
  left: 20px;
  top: 102px;
  width: 350px;
  height: 49px;
  color: rgba(0, 0, 0, 0.3);
}
.Price {
  color: #6060603e;
  text-align: right;
  font: 600 14px "Noto Sans", sans-serif;
  position: absolute;
  left: 121px;
  top: 52px;
  width: 121px;
  height: 17px;
}
.alg img {
  width: 18px;
  height: 18px;
  position: absolute;
  top: 55px;
  left: 10px;
}
.alg div {
  position: absolute;
  top: 53px;
  left: 33px;
  font: 600 15px "Noto Sans", sans-serif;
  text-align: left;
  color: red;
}
</style>
