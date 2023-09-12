<template>
  <div>
    <div class="detail-header">
      <button class="arrow-back-background" @click="click_back">
        <img class="arrow-back" src="@/assets/icon/arrow_back_iOS.png" />
      </button>
    </div>
    <div class="detail-page">
      <div class="description-page">
        <img class="menu-img" :src="require(`@/assets/menu/${img_url}.png`)" />
      </div>
      <div class="description-group">
        <div class="menu-name-group">
          <div class="menu-name-eng" v-text="detail_list.menu_name"></div>
          <div class="menu-name-rom">Default Roman Name</div>
        </div>
        <div class="detail-group">
          <div class="details">Details</div>
          <div class="detail-text" v-text="detail_list.menu_ing"></div>
        </div>
        <div class="allergy-group">
          <div class="allergy">Allergy</div>
          <div class="allergy-list">
            <div v-for="allergy in detail_list.menuAlg" :key="allergy">
              <div v-if="detail_list.userAlg.includes(allergy)">
                <div class="alg-tag-impossible">
                  <span>{{ allergy }}</span>
                </div>
              </div>
              <div v-else>
                <div class="alg-tag-possible">
                  <span>{{ allergy }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="detail-footer">
      <div class="price-group">
        <div class="price-text">
          <div
            class="menu-price"
            v-text="detail_list.menu_price + ' won'"
          ></div>
        </div>
        <div class="price-button-group">
          <div>
            <button class="remove-background" @click="click_remove">
              <img class="remove" src="@/assets/icon/remove.png" />
            </button>
          </div>
          <div class="count" v-text="menu_count"></div>
          <div>
            <button class="add-background" @click="click_add">
              <img class="add" src="@/assets/icon/add.png" />
            </button>
          </div>
        </div>
      </div>
      <div class="button-group">
        <button class="add-cart" @click="add_cart">Add to Cart</button>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "DescriptionPage",
  components: {},
  props: {},
  data() {
    return {
      prev_rest: "",
      prev_url: "",
      menu_count: 1,
      detail_list: [],
      img_url: "loading",
      price: 0,
    };
  },
  methods: {
    click_remove() {
      if (this.menu_count < 2) {
        alert("최소주문 개수입니다");
      } else {
        this.menu_count -= 1;
        this.detail_list.menu_price =
          parseInt(this.detail_list.menu_price) - this.price;
      }
    },
    click_add() {
      this.menu_count += 1;
      this.detail_list.menu_price =
        parseInt(this.detail_list.menu_price) + this.price;
    },
    click_back() {
      this.prev_url = "#/allmenu/" + this.prev_rest;
      location.href = this.prev_url;
    },
    add_cart() {
      alert("Comming Soon..");
    },
  },
  created() {
    const menu_id = this.$route.params.menu_id_url_param;
    const rest_name = this.$route.params.rest_name_url_param;
    this.prev_rest = rest_name;

    axios.get(`/api/menuDetail/${menu_id}`).then((response) => {
      this.detail_list = response.data[0];
      this.img_url = this.detail_list.img_url;
      this.price = parseInt(this.detail_list.menu_price);
    });
  },
};
</script>
<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap");

.detail-header {
  position: fixed;
  z-index: 20;
  width: 100%;
  height: 100px;
  max-width: 500px;
}
.arrow-back-background {
  width: 60px;
  height: 60px;
  position: absolute;
  background: rgba(255, 255, 255, 0.9);
  border-radius: 30px;
  border: none;
  top: 25px;
  left: 20px;
  cursor: pointer;
}
.arrow-back-background img {
  width: 32px;
  height: 24px;
  padding-top: 4px;
  padding-left: 15px;
}
.detail-page {
  background: #ffffff;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 120px);
  position: absolute;
  overflow-y: auto;
}
.description-page {
  width: 100%;
  height: 200px;
  position: absolute;
  top: 0px;
}
.menu-img {
  background: linear-gradient(to left, #d9d9d9, #d9d9d9);
  width: 100%;
  height: 100%;
}
.description-group {
  width: 100%;
  display: flex;
  flex-direction: column;
  overflow-x: clip;
  position: absolute;
  top: 200px;
}
.menu-name-group {
  width: 100%;
  height: 100px;
  display: flex;
  flex-direction: column;
  margin-top: 20px;
  margin-left: 10px;
}
.menu-name-eng {
  color: #000000;
  font: 500 22px "Rubik", sans-serif;
  width: 100%;
}
.menu-name-rom {
  width: 100%;
  font: 300 16px "Rubik", sans-serif;
  color: #575757;
}
.detail-group {
  width: 100%;
  height: 200px;
  margin-left: 10px;
}
.details {
  width: 100%;
  height: 20%;
  color: black;
  font: 500 18px "Rubik", sans-serif;
}
.detail-text {
  color: #575757;
  font: 400 12px "Rubik", sans-serif;
  width: 90%;
  height: 80%;
}
.allergy-group {
  width: 100%;
  margin-left: 10px;
  margin-bottom: 20px;
}
.allergy {
  color: #000000;
  font: 500 18px "Rubik", sans-serif;
  width: 100%;
  height: 20%;
}
.allergy-list {
  display: flex;
  flex-wrap: wrap;
  margin-top: 20px;
}
.alg-tag-possible {
  width: 110px;
  height: 35px;
  background: #1c9181;
  box-shadow: 2px 2px 2px 1px rgba(39, 149, 114, 0.3);
  display: flex;
  border-radius: 20px;
  margin-right: 10px;
  align-items: center;
  justify-content: center;
  margin-bottom: 10px;
}
.alg-tag-impossible {
  width: 110px;
  height: 35px;
  background: rgb(255, 73, 73);
  box-shadow: 2px 2px 2px 1px rgba(255, 73, 73, 0.3);
  display: flex;
  border-radius: 20px;
  margin-right: 10px;
  align-items: center;
  justify-content: center;
  margin-bottom: 10px;
}
.alg-tag-impossible span {
  color: white;
  font: 400 16px "Rubik", sans-serif;
}
.alg-tag-possible span {
  color: white;
  font: 400 16px "Rubik", sans-serif;
}
.detail-footer {
  width: 100%;
  height: 120px;
  position: fixed;
  background: none;
  bottom: 0px;
  max-width: 500px;
  display: flex;
  flex-direction: column;
  z-index: 20;
}
.price-group {
  width: 100%;
  height: 50%;
  display: flex;
  flex-direction: row;
  background: white;
}
.price-text {
  width: 50%;
  display: flex;
  margin-left: 20px;
  margin-top: 10px;
}
.price-button-group {
  width: 50%;
  display: flex;
  justify-content: center;
  margin-top: 10px;
}
.price-button-group div {
  width: 30%;
  display: flex;
  justify-content: center;
}

.price {
  color: #000000;
  text-align: right;
  font: 500 14px "Rubik", sans-serif;
}
.menu-price {
  color: #1c9181;
  text-align: left;
  font: 400 19px "Rubik", sans-serif;
}

.remove-background {
  background: #d9d9d9;
  border-radius: 50%;
  width: 23px;
  height: 23px;
  border: none;
  cursor: pointer;
}
.remove-background img {
  width: 19px;
  height: 19px;
}
.add-background {
  background: #d9d9d9;
  border-radius: 50%;
  width: 23px;
  height: 23px;
  border: none;
  cursor: pointer;
}
.add-background img {
  width: 19px;
  height: 19px;
}
.count {
  color: #000000;
  text-align: left;
  font: 400 18px "Rubik", sans-serif;
}
.button-group {
  width: 100%;
  height: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  background: white;
}
.add-cart {
  width: 90%;
  height: 40px;
  border-radius: 10px;
  background: #1c9181;
  border: none;
  color: white;
  margin-bottom: 10px;
  font: 400 18px "Rubik", sans-serif;
}
</style>
