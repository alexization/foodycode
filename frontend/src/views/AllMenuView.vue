<template>
  <div>
    <RestaurantName :restaurantName="this.rest_title"></RestaurantName>
    <div class="MenuList">
      <div class="menu">
        <div v-for="item in list" :key="item">
          <router-link :to="`${url_href}/${item.id}`">
            <MenuCard
              :menuName="item.menu_name"
              :menuImg="item.img_url"
              :menuIng="item.menu_ing"
              :menuPrice="item.menu_price"
            />
          </router-link>
        </div>
        <div class="line"></div>
      </div>
      <div class="alg-menu">
        <div v-for="item in alg_list" :key="item">
          <router-link :to="`${this.url_href}/${item.id}`">
            <AlgMenuCard
              :menuName="item.menu_name"
              :menuImg="item.img_url"
              :menuIng="item.menu_ing"
              :menuPrice="item.menu_price"
              :algName="item.menu_alg[0]"
            />
          </router-link>
        </div>
      </div>
    </div>
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
      list: [],
      alg_list: [],
      url_href: "",
      rest_title: "",
      user_name: "",
    };
  },

  async created() {
    this.url = window.location.href.split("#");
    this.url_href = this.url[1];
    //URL에서 전달받는 parmeter = rest_name_url_param
    //요청할 API경로에 해당 값을 붙여 get요청
    const rest_name = this.$route.params.rest_name_url_param;
    axios.get(`/api/menu/${rest_name}`).then((response) => {
      const menu_list = [];
      const alg_menu = [];
      for (let i = 0; i < response.data.length; i++) {
        if (response.data[i].menu_alg.length === 0) {
          menu_list.push(response.data[i]);
        } else {
          response.data[i].menu_alg.sort();
          let str = response.data[i].menu_alg.join(", ");
          response.data[i].menu_alg = [];
          response.data[i].menu_alg.push(str);
          alg_menu.push(response.data[i]);
        }
      }
      this.list = menu_list;
      this.alg_list = alg_menu;
      this.rest_title = rest_name;
    });
  },
};
</script>

<style scoped>
.MenuList {
  position: absolute;
  overflow-y: auto;
  overflow-x: hidden;
  box-sizing: border-box;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 140px);
  top: 140px;
  display: flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  margin-left: 1.3%;
  padding-top: 20px;
}
.menu {
  width: 100%;
  cursor: pointer;
}
.alg-menu {
  width: 100%;
  cursor: pointer;
}
.line {
  width: 94%;
  height: 3px;
  left: 1.5%;
  border-radius: 100px;
  background: #42b2a36b;
  position: relative;
  margin-top: 15px;
  margin-bottom: 15px;
}
</style>
