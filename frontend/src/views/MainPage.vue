<template>
  <div class="landing-page">
    <div class="frame-19">
      <template v-for="item in list" :key="item">
        <RestaurantCard
          :restaurantName= "item.image"
          :title="item.title"
        ></RestaurantCard>
      </template>
    </div>
    <Header></Header>
  </div>
</template>

<script>
/* Code generated with AutoHTML Plugin for Figma */
import Header from "../components/Header.vue";
import RestaurantCard from "../components/RestaurantCard.vue";
import MenuCard from "../components/MenuCard.vue";
import RestaurantName from "../components/RestaurantName.vue";
import RegisterStepHeader from "../components/RegisterStepHeader.vue";

import axios from "axios";

export default {
  name: "LandingPage",
  components: {
    Header,
    RestaurantCard,
    MenuCard,
    RestaurantName,
    RegisterStepHeader,
  },
  props: {},
  data() {
    // quickfix to have components available to pass as props
    return {
      list: "",
    };
  },

  async created() {
    axios.get("/api/main").then((response) => {
      const restaurant_list = response.data;
      this.list = restaurant_list;
    });
  },
};
</script>
<style scoped>
.landing-page,
.landing-page * {
  box-sizing: border-box;
}
.landing-page {
  background: #ffffff;
  width: 390px;
  height: 844px;
  position: relative;
  overflow-y: auto;
}
.frame-19 {
  padding: 10px 0px 10px 0px;
  display: flex;
  flex-direction: column;
  gap: 15px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 20px;
  top: 179px;
}
</style>
