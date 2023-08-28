<template>
  <div class="RestaurantName">
    <div class="Rectangle">
      <div class="row-position">
        <button class="arrow-back">
          <img :src="arrow_back" width="25" @click="click_back" />
        </button>
        <div class="Rest-name" v-text="restaurantName"></div>
        <div class="row-button-position">
          <div class="Order">
            <img src="@/assets/icon/assignment.png" />
          </div>
          <div class="Basket">
            <img src="@/assets/icon/shopping_cart.png" />
          </div>
        </div>
      </div>
      <div
        class="prev-login"
        v-if="this.login_status === false"
        @click="go_login"
      >
        <div class="column-position">
          <span>Please Login First</span>
          <img src="@/assets/icon/login.png" />
        </div>
      </div>

      <div class="onlogin-user" v-else-if="this.login_status === true">
        <div class="column-position">
          <span>Filtered Menu For </span>
          <span class="user-name" v-text="this.userName"></span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import axios from "axios";

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
    };
  },
  methods: {
    click_back() {
      location.href = "#/";
    },
    order_confirm() {
      alert("Comming Soon..");
    },
    click_basket() {
      alert("Comming Soon..");
    },
    go_login() {
      location.href = "#/login";
    },
  },
  async created() {
    axios
      .get("/api/useralg")
      .then((response) => {
        this.userName = response.data.uname.toUpperCase();
        console.log(this.userName);
        console.log(this.userName.length);
        this.login_status = true;
      })
      .catch((error) => {
        this.login_status = false;
      });
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
  height: 140px;
  position: absolute;
}
.Rectangle {
  background: #42b2a3;
  width: 100%;
  height: 140px;
  position: absolute;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
  display: flex;
  flex-direction: column;
}
.row-position {
  display: flex;
  height: 60%;
  width: 100%;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
}
.column-position {
  display: flex;
  height: 100%;
  width: 100%;
  align-items: center;
  justify-content: center;
}
.row-button-position {
  width: 20%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
}
.arrow-back {
  width: 20%;
  border: none;
  background-color: #42b2a3;
  cursor: pointer;
}

.Rest-name {
  color: #000000;
  text-align: center;
  font: 600 20px "Noto Sans", sans-serif;
  width: 50%;
}
.prev-login {
  color: #000000;
  text-align: center;
  font: 600 20px "Noto Sans", sans-serif;
  width: 100%;
  text-align: center;
  color: black;
  cursor: pointer;
}

.prev-login img {
  width: 20px;
  height: 20px;
}
.onlogin-user {
  color: #000000;
  text-align: left;
  font: 400 20px "Noto Sans", sans-serif;
  width: 100%;
  text-align: center;
}
.user-name {
  font: 600 20px "Noto Sans", sans-serif;
  color: white;
  width: 30%;
}
.Order img {
  width: 32px;
  height: 34px;
}
.Basket img {
  width: 32px;
  height: 32px;
}
</style>
