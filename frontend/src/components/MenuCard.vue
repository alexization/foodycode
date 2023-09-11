<template>
  <div class="MenuCard">
    <div class="Card-Rectangle">
      <div class="first-row">
        <div class="first-column">
          <div class="Menu-name" v-text="menuName"></div>
          <div class="Price" v-text="menuPrice + ' WON'"></div>
        </div>
        <div class="Img-Box">
          <img :src="require(`@/assets/menu/${menuImg}.png`)" />
        </div>
      </div>
      <div class="second-row">
        <div class="Menu-Ing" v-text="menuIng"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    menuName: {
      type: String,
      default: "Default Menu Name",
    },
    menuImg: {
      type: String,
      default: "menu_init",
    },
    menuIng: {
      type: String,
      default: "Default Menu Ingredient",
    },
    menuPrice: {
      type: String,
      default: "0000",
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap");

.MenuCard,
.MenuCard * {
  box-sizing: border-box;
}
.MenuCard {
  width: 98%;
  height: 170px;
  margin-bottom: 8px;
  position: relative;
}
.Card-Rectangle {
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.1);
  box-shadow: 2px 2px 1px 1px rgba(205, 205, 205, 0.2);
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
.Img-Box {
  background: rgba(0, 0, 0, 0.3);
  width: 35%;
  height: 75%;
  border-radius: 10px;
  margin: 10px;
}
.Img-Box img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
}
.Menu-name {
  color: #000000;
  font: 500 16px "Rubik", sans-serif;
  width: 100%;
  height: 40%;
  display: flex;
  align-items: center;
  margin-left: 10px;
  letter-spacing: 0.4px;
}
.Menu-Ing {
  font: 400 12px "Rubik", sans-serif;
  width: 95%;
  height: 60%;
  white-space: normal;
  word-wrap: break-word;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.Price {
  color: #606060;
  font: 400 14px "Rubik", sans-serif;
  width: 100%;
  height: 20%;
  display: flex;
  align-items: center;
  margin-left: 10px;
}
</style>
