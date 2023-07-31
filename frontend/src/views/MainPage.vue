<template>
  <div class="landing-page">
    <div class="frame-19">
      <template v-for="item in list" :key="item">
        <RestaurantCard
          :image="item.image"
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

import Hot_Pot_Stew from "@/assets/restaurant/Hot Pot Stew Restaurant.png";
import Korean_Barbeque from "@/assets/restaurant/Korean Barbeque Restaurant.png";

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
      list: [
        {
          image: Hot_Pot_Stew,
          title: "Hot Pot Stew Restaurant",
        },
        {
          image: Korean_Barbeque,
          title: "Korean Barbeque Restaurant",
        },
        {
          image: Korean_Barbeque,
          title: "Korean Barbeque Restaurant",
        },
      ],
    };
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
.component-1 {
  flex-shrink: 0;
  width: 350px;
  height: 303px;
  position: relative;
}
.group-106 {
  position: absolute;
  inset: 0;
}
.rectangle-179 {
  background: linear-gradient(to left, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3));
  width: 350px;
  height: 233px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.rectangle-181 {
  opacity: 0.699999988079071;
  width: 350px;
  height: 303px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.vector-49 {
  border-radius: 0px;
  position: absolute;
  left: 320px;
  top: 243px;
  overflow: visible;
}
.hot-pot-stew-resturant {
  color: #000000;
  text-align: left;
  font: 500 20px "Noto Sans", sans-serif;
  position: absolute;
  left: 20px;
  top: 238px;
  width: 285px;
}
._4-8 {
  color: #000000;
  text-align: left;
  font: 400 15px "Noto Sans", sans-serif;
  position: absolute;
  left: 47px;
  top: 270px;
}
._240-ratings {
  color: #969595;
  text-align: left;
  font: 400 15px "Noto Sans", sans-serif;
  position: absolute;
  left: 79px;
  top: 270px;
}
.star-3 {
  border-radius: 0px;
  position: absolute;
  left: 20px;
  top: 270px;
  overflow: visible;
}
.component-2 {
  flex-shrink: 0;
  width: 350px;
  height: 303px;
  position: relative;
}
.vector-492 {
  border-radius: 0px;
  position: absolute;
  left: 320px;
  top: 243px;
  overflow: visible;
}
.korean-beef {
  color: #000000;
  text-align: left;
  font: 500 20px "Noto Sans", sans-serif;
  position: absolute;
  left: 20px;
  top: 238px;
  width: 285px;
}
.star-32 {
  border-radius: 0px;
  position: absolute;
  left: 20px;
  top: 270px;
  overflow: visible;
}
.component-3 {
  flex-shrink: 0;
  width: 350px;
  height: 303px;
  position: relative;
}
.rectangle-1792 {
  background: linear-gradient(to left, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3));
  border-style: solid;
  border-color: #000000;
  border-width: 1px;
  width: 350px;
  height: 233px;
  position: absolute;
  left: 0px;
  top: 0px;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
}
.vector-493 {
  border-radius: 0px;
  position: absolute;
  left: 320px;
  top: 243px;
  overflow: visible;
}
.star-33 {
  border-radius: 0px;
  position: absolute;
  left: 20px;
  top: 270px;
  overflow: visible;
}
.component-4 {
  flex-shrink: 0;
  width: 350px;
  height: 303px;
  position: relative;
}
.vector-494 {
  border-radius: 0px;
  position: absolute;
  left: 320px;
  top: 243px;
  overflow: visible;
}
.star-34 {
  border-radius: 0px;
  position: absolute;
  left: 20px;
  top: 270px;
  overflow: visible;
}
</style>
