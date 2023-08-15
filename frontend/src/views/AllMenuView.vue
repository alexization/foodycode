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
import RestaurantName from '../components/RestaurantName.vue';
import MenuCard from '../components/MenuCard.vue';
import AlgMenuCard from '../components/AlgMenuCard.vue';

import axios from 'axios';

export default {
  name: 'LandingPage',
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
    };
  },

  async created() {
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
          let str = response.data[i].menu_alg.join(', ');
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
  top: 180px;
  padding-top: 10.1px;
}
.line {
  width: 94%;
  height: 3.4px;
  left: 1.5%;
  border-radius: 100px;
  background: #42b2a36b;
  position: relative;
  margin-top: 5px;
  margin-bottom: 15px;
}
</style>
