<template>
  <div>
    <Header @change_status="status" @post_data="available_post"></Header>
    <div class="edit-page">
      <div class="preview-text">
        <img src="@/assets/icon/visibility.png" />
        <span>Restaurant introduction screen preview</span>
      </div>
      <div class="restaurant-list">
        <RestaurantCard />
      </div>
      <div class="line"></div>

      <div class="edit-text">
        <span>Image of the restaurant</span>
        <button v-if="this.edit_status === true" @click="img_upload">
          Image Upload
        </button>
      </div>
      <div class="edit-box">
        <div class="image-box">
          <img src="@/assets/restaurant/restaurant_init.png" />
          <div v-if="this.edit_status === false">
            <div class="input-box">
              <span>Name</span>
              <input type="text" value="Untitled Restaurant" readonly />
            </div>
            <div class="input-box">
              <span>Tel.</span>
              <input type="text" value="010-0000-0000" readonly />
            </div>
            <div class="input-box">
              <span>Address</span>
              <input type="text" value="Yonsei Univ." readonly />
            </div>
          </div>
          <div v-else>
            <div class="input-box">
              <span>Name</span>
              <input type="text" placeholder="Untitled Restaurant" />
            </div>
            <div class="input-box">
              <span>Tel.</span>
              <input type="text" placeholder="010-0000-0000" />
            </div>
            <div class="input-box">
              <span>Address</span>
              <input type="text" placeholder="Yonsei Univ." />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "../components/manager/EditRestHeader.vue";
import RestaurantCard from "../components/RestaurantCard.vue";

import axios from "axios";

export default {
  name: "HomeView",
  components: {
    Header,
    RestaurantCard,
  },
  props: {},
  data() {
    return {
      edit_status: false,
      post_status: false,
      list: "",
    };
  },
  async created() {
    axios.get("/api/restuser").then((response) => {
      console.log(response.data);
    });
  },
  methods: {
    status() {
      this.edit_status = !this.edit_status;
    },
    img_upload() {
      alert("Click Image Upload");
    },
    available_post() {
      // 여기다가 post 넣으면 됨
      axios.put("/api/restuser",{
        test:"hi",
      })
      .then((res) => {
        console.log(res.data);
      })
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");
.edit-page {
  overflow-y: scroll;
  overflow-x: hidden;
  position: absolute;
  width: 100%;
  top: 80px;
  height: calc(var(--vh, 1vh) * 100 - 80px);
}
.preview-text {
  position: absolute;
  left: 30px;
}
.preview-text img {
  width: 30px;
  height: 30px;
  vertical-align: middle;
}
.preview-text span {
  font: 500 15px "Noto Sans", sans-serif;
  text-align: center;
  color: #1c9181;
  margin-left: 8px;
}
.restaurant-list {
  position: absolute;
  top: 20px;
  box-sizing: border-box;
  width: 100%;
  height: 260px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.line {
  width: 100%;
  height: 2px;
  position: absolute;
  top: 290px;
  background: #a8a8a8;
}
.edit-text {
  width: 100%;
  top: 310px;
  position: absolute;
}
.edit-text span {
  font: 500 15px "Noto Sans", sans-serif;
  text-align: left;
  color: #15675c;
  margin-left: 20px;
}
.edit-text button {
  position: absolute;
  right: 20px;
  border-radius: 10px;
  border: 1px solid #1c9181;
  background: #1c9181;
  width: 28%;
  height: 26px;
  flex-shrink: 0;
  color: white;
}
.edit-box {
  top: 340px;
  width: 100%;
  position: absolute;
  display: block;
  padding: 10px 0px;
  background: #ffffff;
  margin-top: 5px;
}
.image-box {
  width: 94%;
  height: 180px;
  margin: auto;
}
.image-box img {
  width: 94%;
  margin-left: 3%;
  height: 180px;
  border: 1px solid #d9d9d9;
  border-radius: 10px;
}
.input-box {
  position: relative;
  height: 30px;
  padding-top: 10px;
}
.input-box span {
  margin-left: 20px;
  font: 500 16px "Noto Sans", sans-serif;
  margin-top: 5px;
}
.input-box input {
  position: absolute;
  width: 60%;
  right: 20px;
  border-color: #1c9181;
  border-style: solid;
  border-width: 1px;
  border-radius: 5px;
  height: 26px;
  padding: 2px;
  padding-left: 5px;
}

@media screen and (min-width: 500px) {
}

::-webkit-scrollbar {
  display: none;
}

/* Transition navigation bar fade */
.fade-enter-active {
  transition: opacity 0.25s ease;
}
.fade-leave-active {
  transition: opacity 0.25s ease;
}

.fade-enter-from {
  opacity: 0;
}
.fade-enter-to {
  opacity: 1;
}
.fade-leave-from {
  opacity: 1;
}
.fade-leave-to {
  opacity: 0;
}

/* Transition navigation bar slide */
.slide-enter-active {
  transition: transform 0.25s ease, opacity 0.25s ease;
}
.slide-leave-active {
  transition: transform 0.25s ease, opacity 0.25s ease;
}

.slide-enter-from {
  opacity: 0;
  transform: translateX(-25%);
}
.slide-enter-to {
  opacity: 1;
}
.slide-leave-from {
  opacity: 1;
}
.slide-leave-to {
  opacity: 0;
  transform: translateX(-25%);
}
</style>
