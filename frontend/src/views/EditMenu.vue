<template>
  <div>
    <RestaurantName
      :restaurantName="this.rest_title"
      @edit_status="change_status"
    ></RestaurantName>
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

    // 여기는 고정인데 식당이름을 따로 가져오게 할지 고민좀 해보야할듯
    axios.get(`/api/restuser_menu`).then((response) => {
      this.list = response.data;
      console.log(response.data);
    });
    axios.get("/api/restuser").then((response) => {
      console.log(response.data);
      this.rest_title = response.data.rest_name;
    });
  },
  methods: {
    change_status() {
      this.edit_status = !this.edit_status;
    },
    add_menu() {
      location.href = "#/addmenu";
    },
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
  top: 120px;
  display: flex;
  flex-direction: column;
  gap: 0px;
  align-items: center;
  justify-content: flex-start;
  margin-left: 1.3%;
  padding-top: 20px;
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
