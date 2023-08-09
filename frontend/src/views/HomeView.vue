<template>
  <div>
    <Header></Header>
    <SearchBar></SearchBar>
    <div class="restaurant-list">
      <div v-for="item in list" :key="item">
        <RestaurantCard
          :restaurantName="item.img_url"
          :title="item.rest_name"
          :telNum="item.tel"
        ></RestaurantCard>
      </div>
    </div>
  </div>
</template>

<script>
/* Code generated with AutoHTML Plugin for Figma */
import Header from '../components/Header.vue';
import SearchBar from '../components/SearchBar.vue';
import RestaurantCard from '../components/RestaurantCard.vue';

import axios from 'axios';

export default {
  name: 'HomeView',
  components: {
    Header,
    SearchBar,
    RestaurantCard,
  },
  props: {},
  data() {
    // quickfix to have components available to pass as props
    return {
      list: '',
    };
  },

  async created() {
    axios.get('/api/main').then((response) => {
      console.log(response.data);
      const restaurant_list = response.data;
      this.list = restaurant_list;
    });
  },
};
</script>

<style scoped>

.restaurant-list {
  position: absolute;
  top: 120px;
  overflow-y: auto;
  overflow-x: hidden;
  box-sizing: border-box;  
  width: 100%;
  height: calc(100vh - 120px);  
}

@media screen and (min-width: 768px) {
  
}

::-webkit-scrollbar {
  display: none;
}
</style>
