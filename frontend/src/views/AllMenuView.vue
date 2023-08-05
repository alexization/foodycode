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
    </div>
    <RestaurantName></RestaurantName>
  </div>
</template>

<script>
/* Code generated with AutoHTML Plugin for Figma */
import RestaurantName from '../components/RestaurantName.vue';
import MenuCard from '../components/MenuCard.vue';

import axios from 'axios';

export default {
  name: 'LandingPage',
  components: {
    RestaurantName,
    MenuCard,
  },
  props: {},
  data() {
    // quickfix to have components available to pass as props
    return {
      list: '',
    };
  },

  async created() {
    axios.get('/api/menu').then((response) => {
      //console.log(response.data);
      const menu_list = response.data;
      this.list = menu_list;
    });
    axios.get('/api/menu_alg').then((response) => {
      console.log(response.data);
    });
    axios.get('/api/user_alg').then((response) => {
      console.log(response.data);
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
</style>
