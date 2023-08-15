<template>
  <div class="AlgMenuCard">
    <div class="AlgCard-Rectangle"></div>

    <div class="AlgImg-Box">
      <img :src="require(`@/assets/menu/${menuImg}.png`)" />
    </div>

    <div class="AlgMenu-name" v-text="menuName"></div>
    <div class="alg">
      <img :src="warning" />
      <div class="alg-name" v-text="algName"></div>
    </div>
    <div class="AlgMenu-Ing" v-text="menuIng"></div>
    <div class="Alg-Price" v-text="menuPrice + ' KRW'"></div>
  </div>
</template>

<script>
import warning from '../assets/icon/warning.png';
export default {
  data() {
    return {
      warning,
    };
  },
  props: {
    menuName: {
      type: String,
      default: 'Soy Sauce Bulgogi',
    },
    menuImg: {
      type: String,
      default: 'soy-sauce-bulgogi',
    },
    menuIng: {
      type: String,
      default:
        'Rich Soybean Paste Soup braised with dried anchovy, zucchini, onion, potato, garlic, mushroom, tofu, green onion',
    },
    menuPrice: {
      type: String,
      default: '9000',
    },
    algName: {
      type: String,
      default: 'Fork',
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
  width: 98%;
  height: 169.6px;
  margin-bottom: 8.4px;
  position: relative;
}
.AlgCard-Rectangle {
  background: rgba(215, 215, 215, 0.6);
  border-style: solid;
  border-color: rgba(215, 215, 215, 0.6);
  border-radius: 10px;
  border-width: 1px;
  width: 100%;
  height: 169.6px;
  position: absolute;
  cursor: pointer;
}
.AlgImg-Box {
  background: rgba(0, 0, 0, 0.3);
  width: 32.8%;
  height: 86px;
  border-radius: 10px;
  position: absolute;
  left: 65%;
  top: 10.1px;
}
.AlgImg-Box img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  opacity: 0.7;
}
.AlgMenu-name {
  color: rgba(0, 0, 0, 0.3);
  text-align: left;
  font: 600 15px 'Noto Sans', sans-serif;
  position: absolute;
  left: 3.8%;
  top: 20.3px;
  width: 56.9%;
  height: 22px;
}
.AlgMenu-Ing {
  text-align: left;
  font: 300 12px 'Noto Sans', sans-serif;
  position: absolute;
  left: 3.8%;
  top: 102.1px;
  width: 89.7%;
  height: 49px;
  color: rgba(0, 0, 0, 0.3);
}
.Alg-Price {
  color: #6060603e;
  text-align: right;
  font: 600 14px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30%;
  top: 52.3px;
  width: 31%;
  height: 16.9px;
}
.alg {
  position: absolute;
  top: 50px;
  width: 45%;
  overflow: visible;
}
.alg img {
  width: 18px;
  height: 18px;
  position: absolute;
  top: 19.2%;
  left: 10.1px;
}
.alg div {
  position: absolute;
  top: 18.7%;
  left: 33px;
  font: 600 15px 'Noto Sans', sans-serif;
  text-align: left;
  color: red;
}
</style>
