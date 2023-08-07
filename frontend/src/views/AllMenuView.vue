<template>
  <div class="MenuView">
    <div class="MenuList">
      <template v-for="item in list" :key="item">
        <MenuCard
          :menuName="item.menu_name"
          :menuImg="item.img_url"
          :menuIng="item.menu_ing"
          :menuPrice="item.menu_price"
        >
        </MenuCard>
      </template>
      <div class="line"></div>
      <template v-for="item in alg_list" :key="item">
        <AlgMenuCard
          :menuName="item.menu_name"
          :menuImg="item.img_url"
          :menuIng="item.menu_ing"
          :menuPrice="item.menu_price"
          :algName="item.menu_alg[0]"
        >
        </AlgMenuCard>
      </template>
    </div>
    <RestaurantName></RestaurantName>
  </div>
</template>

<script>
/* Code generated with AutoHTML Plugin for Figma */
import RestaurantName from "../components/RestaurantName.vue";
import MenuCard from "../components/MenuCard.vue";
import AlgMenuCard from "../components/AlgMenuCard.vue";

import axios from "axios";

export default {
  name: "LandingPage",
  components: {
    RestaurantName,
    MenuCard,
    AlgMenuCard,
  },
  props: {},
  data() {
    // quickfix to have components available to pass as props
    return {
      list: "",
      alg_list: "",
    };
  },

  async created() {
    axios.get("/api/menu").then((response) => {
      const menu_list = [];
      const alg_menu = [];
      for (let i = 0; i < response.data.length; i++) {
        if (response.data[i].menu_alg.length === 0) {
          menu_list.push(response.data[i]);
        } else {
          let str = response.data[i].menu_alg.join(", ");
          response.data[i].menu_alg = [];
          response.data[i].menu_alg.push(str);
          alg_menu.push(response.data[i]);
        }
      }
      this.list = menu_list;
      this.alg_list = alg_menu;
    });
  },
};
</script>

<style scoped>
.MenuView,
.MenuView * {
  box-sizing: border-box;
}
.MenuView {
  background: #ffffff;
  width: 390px;
  height: 844px;
  position: relative;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  overflow-y: auto;
}
.MenuList {
  padding: 0px 0px 10px 0px;
  display: flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 0px;
  top: 181px;
}
.line {
  width: 330px;
  height: 5px;
  background: linear-gradient(to right, #033931, #afd5cf);
  position: relative;
  bottom: -10px;
  margin-bottom: 20px;
}
</style>
