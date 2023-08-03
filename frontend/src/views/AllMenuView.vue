<template>
  <div class="menu-page-without-filter">
    <div class="frame-20">
      <div class="component-8">
        <div class="rectangle-267"></div>

        <div class="rectangle-179"></div>

        <div class="rich-soybean-paste-jjigae">Rich Soybean Paste Jjigae</div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Rich Soybean Paste Soup braised with dried anchovy, zucchini, onion,
          potato, garlic, mushroom, tofu, green onion<br />
        </div>
      </div>

      <div class="component-11">
        <div class="rectangle-267"></div>

        <img class="rectangle-1792" src="rectangle-1792.png" />

        <div class="rich-soybean-paste-jjigae">
          Beef Rich Soybean Paste Jjigae
        </div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Rich Soybean Paste Soup braised with dried anchovy, zucchini, onion,
          potato, garlic, mushroom, tofu, green onion<br />
        </div>
      </div>

      <div class="component-6">
        <div class="rectangle-267"></div>

        <img class="rectangle-1792" src="rectangle-1792.png" />

        <div class="rich-soybean-paste-jjigae">
          Seafood Soybean Paste Jjigae
        </div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Soybean Paste Jjigae braised with dried anchovy, zucchini, onion,
          potato, garlic, mushroom, tofu, green onion, clam<br />
        </div>
      </div>

      <div class="component-12">
        <div class="rectangle-267"></div>

        <img class="rectangle-1792" src="rectangle-1792.png" />

        <div class="rich-soybean-paste-jjigae">Squid Soybean Paste Jjigae</div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Rich Soybean Paste Soup braised with dried anchovy, zucchini, onion,
          potato, garlic, mushroom, tofu, green onion<br />
        </div>
      </div>

      <div class="component-7">
        <div class="rectangle-267"></div>

        <img class="rectangle-1793" src="rectangle-1793.png" />

        <div class="rich-soybean-paste-jjigae">
          River Snail Soybean Paste Jjigae
        </div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Seafood Soybean Paste Jjigae braised with dried anchovy, zucchini,
          onion, potato, garlic, mushroom, tofu, green onion, River snail<br />
        </div>

        <div class="_9000-won">10000won</div>
      </div>

      <div class="component-9">
        <div class="rectangle-267"></div>

        <img class="rectangle-1792" src="rectangle-1792.png" />

        <div class="rich-soybean-paste-jjigae">Ginseng Chicken Soup</div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Chicken Soup braised with ginseng, green onion, garlic, steamed rice
        </div>

        <div class="_9000-won">15000won</div>
      </div>

      <div class="component-10">
        <div class="rectangle-267"></div>

        <img class="rectangle-1792" src="rectangle-1792.png" />

        <div class="rich-soybean-paste-jjigae">Pork and Kimchi Jjigae</div>

        <div
          class="rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion"
        >
          Kimchi Jigae braised with salted shrimp, zucchini, onion, potato,
          garlic, mushroom, tofu, green onion<br />
        </div>
      </div>
    </div>
    <RestaurantName></RestaurantName>

    <img class="korean-7644354-1920" src="korean-7644354-1920.png" />
  </div>
</template>

<script>
/* Code generated with AutoHTML Plugin for Figma */
import RestaurantName from '../components/RestaurantName.vue';

import axios from 'axios';

export default {
  name: 'LandingPage',
  components: {
    RestaurantName,
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
      console.log(response.data);
    });
  },
};
</script>

<style scoped>
.menu-page-without-filter,
.menu-page-without-filter * {
  box-sizing: border-box;
}
.menu-page-without-filter {
  background: #ffffff;
  width: 390px;
  height: 844px;
  position: relative;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  overflow-y: auto;
}
.frame-20 {
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
.component-8 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.rectangle-267 {
  border-style: solid;
  border-color: #138373;
  border-width: 1px;
  width: 390px;
  height: 160px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.rectangle-179 {
  background: #000000;
  width: 128px;
  height: 86px;
  position: absolute;
  left: 252px;
  top: 10px;
}
.rich-soybean-paste-jjigae {
  color: #000000;
  text-align: left;
  font: 600 15px 'Noto Sans', sans-serif;
  position: absolute;
  left: 20px;
  top: 20px;
  width: 222px;
  height: 22px;
}
.rich-soybean-paste-soup-braised-with-dried-anchovy-zucchini-onion-potato-garlic-mushroom-tofu-green-onion {
  color: #000000;
  text-align: left;
  font: 300 12px 'Noto Sans', sans-serif;
  position: absolute;
  left: 20px;
  top: 102px;
  width: 350px;
  height: 49px;
}
.component-11 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.rectangle-1792 {
  background: linear-gradient(to left, #000000, #000000);
  width: 128px;
  height: 86px;
  position: absolute;
  left: 252px;
  top: 10px;
}
.component-6 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.component-12 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.component-7 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.rectangle-1793 {
  width: 128px;
  height: 86px;
  position: absolute;
  left: 252px;
  top: 10px;
}
._9000-won {
  color: #606060;
  text-align: right;
  font: 400 12px 'Noto Sans', sans-serif;
  position: absolute;
  left: 121px;
  top: 52px;
  width: 121px;
  height: 17px;
}
.component-9 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.component-10 {
  flex-shrink: 0;
  width: 390px;
  height: 160px;
  position: relative;
}
.korean-7644354-1920 {
  width: 128.07px;
  height: 86px;
  position: absolute;
  left: 251.93px;
  top: 191px;
}
.component-112 {
  width: 390px;
  height: 180px;
  position: sticky;
  left: 0px;
  top: 0px;
}
.rectangle-268 {
  background: #ffffff;
  width: 390px;
  height: 180px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.rectangle-266 {
  width: 60px;
  height: 60px;
  position: absolute;
  left: 19px;
  top: 50px;
}
.back-arrow {
  position: absolute;
  left: 40px;
  top: 68px;
  overflow: visible;
}
.hot-pot-stew-restaurant {
  color: #000000;
  text-align: center;
  font: 600 20px 'Noto Sans', sans-serif;
  position: absolute;
  left: 101px;
  top: 60px;
  width: 188px;
  height: 87px;
}
.filtered-menu-for {
  color: #42b2a3;
  text-align: center;
  font: 400 20px 'Noto Sans', sans-serif;
  position: absolute;
  left: 45px;
  top: 139px;
}
.vector {
  position: absolute;
  left: 302px;
  top: 70px;
  overflow: visible;
}
.vector2 {
  position: absolute;
  left: 338px;
  top: 67px;
  overflow: visible;
}
</style>
