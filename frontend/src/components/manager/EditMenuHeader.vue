<template>
  <div class="RestaurantName">
    <div class="Rectangle"></div>

    <button class="arrow-back">
      <img :src="arrow_back" width="25" @click="click_back" />
    </button>

    <div class="Rest-name" v-text="restaurantName"></div>

    <div class="edit_button" v-if="this.edit_status === false">
      <button @click="change_status">
        <img src="@/assets/icon/edit.png" />
      </button>
    </div>
    <div class="edit_button" v-else>
      <button @click="change_status">
        <img src="@/assets/icon/save.png" />
      </button>
    </div>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";

export default {
  props: {
    restaurantName: {
      type: String,
      default: "Hot Pot Stew Restaurant",
    },
  },
  data() {
    return {
      arrow_back,
      userName: "",
      login_status: false,
      edit_status: false,
    };
  },
  methods: {
    click_back() {
      location.href = "#/manager";
    },
    change_status() {
      this.edit_status = !this.edit_status;
      this.$emit("edit_status");
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.RestaurantName,
.RestaurantName * {
  box-sizing: border-box;
}
.RestaurantName {
  width: 100%;
  height: 120px;
  position: absolute;
}
.Rectangle {
  background: #42b2a3;
  width: 100%;
  height: 120px;
  position: absolute;
  left: 0px;
  top: 0px;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
}
.arrow-back {
  position: absolute;
  left: 7.7%;
  top: 14px;
  width: 6.4%;
  height: 25.3px;
  border: none;
  background-color: #42b2a3;
  cursor: pointer;
}

.Rest-name {
  color: #000000;
  text-align: center;
  font: 600 20px "Noto Sans", sans-serif;
  position: absolute;
  left: 25.9%;
  top: 14px;
  width: 48.2%;
  height: 87px;
}
.prev-login {
  color: #000000;
  text-align: center;
  font: 600 20px "Noto Sans", sans-serif;
  position: absolute;
  width: 100%;
  text-align: center;
  top: 85px;
  color: black;
  cursor: pointer;
}

.prev-login img {
  margin-left: 5px;
  margin-bottom: -3px;
  width: 20px;
  height: 20px;
}
.onlogin-user {
  color: #000000;
  text-align: left;
  font: 400 20px "Noto Sans", sans-serif;
  position: absolute;
  width: 100%;
  text-align: center;
  top: 85px;
}
.user-name {
  font: 600 20px "Noto Sans", sans-serif;
  color: white;
}
.edit_button {
  position: absolute;
  top: 14px;
  right: 35px;
  width: 32px;
  height: 32px;
}
.edit_button button {
  border: none;
  background: none;
}
.edit_button img {
  width: 32px;
  height: 32px;
}
</style>
