<template>
  <div class="MenuView">
    <div class="MenuList">
      <div class="menu">
        <div v-for="item in list" :key="item">
          <router-link :to="`${url_href}/${item.id}`">
            <MenuCard />
          </router-link>
        </div>
      </div>
    </div>
    <RestaurantName :restaurantName="this.rest_title"></RestaurantName>
  </div>
</template>

<script>
import RestaurantName from "../components/manager/EditMenuHeader.vue";
import MenuCard from "../components/MenuCard.vue";

import axios from "axios";

export default {
  components: {
    RestaurantName,
    MenuCard,
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
.MenuView,
.MenuView * {
  box-sizing: border-box;
}
.MenuView {
  background: #ffffff;
  width: 100%;
  height: 100vh;
  position: absolute;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  overflow-y: auto;
}
.MenuList {
  width: 98.7%;
  display: flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 1.3%;
  top: 140px;
  padding-top: 10.1px;
}
.menu {
  width: 100%;
  height: 100%;
  cursor: pointer;
}
</style>
