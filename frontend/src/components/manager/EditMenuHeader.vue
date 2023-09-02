<template>
  <div class="RestaurantName">
    <div class="Rectangle">
      <div class="arrow-back">
        <button>
          <img :src="arrow_back" width="25" @click="click_back" />
        </button>
      </div>

      <div class="Rest-name">
        <span v-text="restaurantName"></span>
      </div>

      <div class="edit" v-if="this.edit_status === false">
        <button class="edit_button" @click="change_status">
          <img src="@/assets/icon/edit.png" />
        </button>
      </div>
      <div class="edit" v-else>
        <button class="edit_button" @click="change_status">
          <img src="@/assets/icon/save.png" />
        </button>
      </div>
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
  background: #42b2a3;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
}
.Rectangle {
  width: 100%;
  height: 70px;
  position: absolute;
  display: flex;
  align-items: center;
}
.arrow-back {
  width: 20%;
  display: flex;
  justify-content: center;
}
.arrow-back button {
  width: 32px;
  height: 32px;
  border: none;
  background: none;
  cursor: pointer;
}
.arrow-back img {
  width: 100%;
  height: 100%;
}
.Rest-name {
  width: 60%;
  display: flex;
  justify-content: center;
}
.Rest-name span {
  color: #000000;
  text-align: center;
  font: 600 20px "Noto Sans", sans-serif;
}
.edit {
  width: 20%;
  display: flex;
  justify-content: center;
}
.edit_button {
  border: none;
  background: none;
}
.edit_button img {
  width: 32px;
  height: 32px;
}
</style>
