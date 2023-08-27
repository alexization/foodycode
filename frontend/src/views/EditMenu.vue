<template>
  <div class="MenuView">
    <div class="MenuList">
      <div class="menu" v-if="this.edit_status === false">
        <div v-for="item in list" :key="item">
          <MenuCard
            :menuName="item.menu_name"
            :menuImg="item.img_url"
            :menuIng="item.menu_ing"
            :menuPrice="item.menu_price"
          />
        </div>
      </div>
      <div class="menu" v-else>
        <div v-for="item in list" :key="item">
          <!-- 추후에 메뉴 편집 페이지로 link 변경해주면 됨 -->
          <router-link :to="`${url_href}/${item.id}`">
            <MenuCard
              :menuName="item.menu_name"
              :menuImg="item.img_url"
              :menuIng="item.menu_ing"
              :menuPrice="item.menu_price"
            />
            <div class="modify-button">
              <img src="@/assets/icon/modify.png" />
            </div>
          </router-link>
        </div>
      </div>
      <div class="add-menu">
        <button @click="add_menu">
          <img src="@/assets/icon/add_circle.png" />
        </button>
      </div>
    </div>
    <RestaurantName
      :restaurantName="this.rest_title"
      @edit_status="change_status"
    ></RestaurantName>
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
      url_href: "",
      rest_title: "",
      user_name: "",
      edit_status: false,
    };
  },

  async created() {
    this.url = window.location.href.split("#");
    this.url_href = this.url[1];
    //URL에서 전달받는 parmeter = rest_name_url_param
    //요청할 API경로에 해당 값을 붙여 get요청

    // const rest_name = this.$route.params.rest_name_url_param;

    const rest_name = "Teolbone";
    axios.get(`/api/restuser_menu`).then((response) => {
      this.list = response.data;
      this.rest_title = rest_name;
    });
  },
  methods: {
    change_status() {
      this.edit_status = !this.edit_status;
    },
    add_menu() {
      alert("Click Add Menu Button");
    },
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
  align-items: center;
  justify-content: flex-start;
  position: absolute;
  left: 1.3%;
  top: 140px;
  padding-top: 10.1px;
}
.menu {
  width: 100%;
  cursor: pointer;
}
.modify-button {
  position: relative;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  z-index: 10;
  bottom: 120px;
  height: 0px;
}
.modify-button img {
  width: 60px;
  height: 60px;
}
.add-menu {
  margin-top: 15px;
}
.add-menu button {
  border: none;
  background: none;
  width: 50px;
  height: 50px;
  cursor: pointer;
}
.add-menu img {
  width: 50px;
  height: 50px;
}
</style>
