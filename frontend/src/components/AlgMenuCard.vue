<template>
  <div class="AlgMenuCard">
    <div class="AlgCard-Rectangle">
      <div class="first-row">
        <div class="first-column">
          <div class="AlgMenu-name" v-text="menuName"></div>
          <div class="Alg-Price" v-text="menuPrice + ' KRW'"></div>
          <div class="alg">
            <img :src="warning" />
            <div class="alg-name" v-text="algName"></div>
          </div>
        </div>
        <div class="AlgImg-Box">
          <img :src="require(`@/assets/menu/${menuImg}.png`)" />
        </div>
      </div>
      <div class="second-row">
        <div class="AlgMenu-Ing" v-text="menuIng"></div>
      </div>
    </div>
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
@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap');

.AlgMenuCard,
.AlgMenuCard * {
  box-sizing: border-box;
}
.AlgMenuCard {
  width: 98%;
  height: 170px;
  margin-bottom: 8px;
  position: relative;
}
.AlgCard-Rectangle {
  background: rgba(215, 215, 215, 0.6);
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.1);
  box-shadow: rgba(215, 215, 215, 0.6);
  border-radius: 10px;
  border-width: 1px;
  width: 100%;
  height: 170px;
  position: absolute;
  cursor: pointer;
  display: flex;
  flex-direction: column;
}
.first-row {
  display: flex;
  width: 100%;
  height: 70%;
}
.second-row {
  display: flex;
  width: 100%;
  height: 30%;
  justify-content: space-around;
}
.first-column {
  display: flex;
  width: 60%;
  height: 100%;
  flex-direction: column;
}
.AlgImg-Box {
  background: rgba(0, 0, 0, 0.3);
  width: 35%;
  height: 75%;
  border-radius: 10px;
  margin: 10px;
}
.AlgImg-Box img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  opacity: 0.7;
}
.AlgMenu-name {
  color: rgba(0, 0, 0, 0.3);
  font: 500 16px 'Rubik', sans-serif;
  width: 100%;
  height: 40%;
  display: flex;
  align-items: center;
  margin-left: 10px;
  letter-spacing: 0.4px;
}
.AlgMenu-Ing {
  font: 400 12px 'Rubik', sans-serif;
  width: 95%;
  color: rgba(0, 0, 0, 0.3);
  height: 60%;
  white-space: normal;
  word-wrap: break-word;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.Alg-Price {
  color: #6060603e;
  font: 400 14px 'Rubik', sans-serif;
  width: 100%;
  height: 20%;
  display: flex;
  align-items: center;
  justify-content: flex-end;
}
.alg {
  width: 100%;
  height: 30%;
  margin-left: 10px;
  align-items: center;
  display: flex;
}
.alg img {
  width: 18px;
  height: 18px;
}
.alg div {
  font: 400 16px 'Rubik', sans-serif;
  color: red;
  margin-left: 3px;
}
</style>
