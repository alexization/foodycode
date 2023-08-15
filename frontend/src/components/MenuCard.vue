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
  },
};
</script>

<style scoped>
.MenuCard,
.MenuCard * {
  box-sizing: border-box;
}
.MenuCard {
  width: 98%;
  height: 169.6px;
  margin-bottom: 8.4px;
  position: relative;
}
.Card-Rectangle {
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.1);
  box-shadow: 2px 2px 1px 1px rgba(205, 205, 205, 0.2);
  border-radius: 10px;
  border-width: 1px;
  width: 100%;
  height: 169.6px;
  position: absolute;
  cursor: pointer;
  padding-top: 10.1px;
}
.Img-Box {
  background: rgba(0, 0, 0, 0.3);
  width: 32.8%;
  height: 86px;
  border-radius: 10px;
  position: absolute;
  left: 65%;
  top: 10.1px;
}
.Img-Box img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
}
.Menu-name {
  color: #000000;
  text-align: left;
  font: 600 15px 'Noto Sans', sans-serif;
  position: absolute;
  left: 3.8%;
  top: 20.3px;
  width: 56.9%;
  height: 22px;
}
.Menu-Ing {
  text-align: left;
  font: 300 12px 'Noto Sans', sans-serif;
  position: absolute;
  left: 3.8%;
  top: 102.1px;
  width: 89.7%;
  height: 49px;
}
.Price {
  color: #606060;
  text-align: right;
  font: 600 14px 'Noto Sans', sans-serif;
  position: absolute;
  left: 29.7%;
  top: 52.3px;
  width: 31%;
  height: 16.9px;
}
</style>
