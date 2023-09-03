<template>
  <div class="detail-page">
    <div class="description-page">
      <img class="menu-img" :src="require(`@/assets/menu/${img_url}.png`)" />
      <button class="arrow-back-background" @click="click_back">
        <img class="arrow-back" src="@/assets/icon/arrow_back_iOS.png" />
      </button>

      <div class="menu-name" v-text="detail_list.menu_name"></div>
      <div class="details">Details</div>
      <div class="detail-text" v-text="detail_list.menu_ing"></div>
      <div class="allergy-tag">Allergy</div>
      <div class="price">Price</div>
      <div class="menu-price" v-text="detail_list.menu_price + ' won'"></div>
      <button class="remove-background" @click="click_remove">
        <img class="remove" src="@/assets/icon/remove.png" />
      </button>
      <button class="add-background" @click="click_add">
        <img class="add" src="@/assets/icon/add.png" />
      </button>
      <div class="count" v-text="menu_count"></div>
    </div>
    <div class="Footer">
      <button class="add-cart" @click="add_cart">Add to Cart</button>
    </div>
  </div>
</template>
<script>
import axios from 'axios';

/* Code generated with AutoHTML Plugin for Figma */

export default {
  name: 'DescriptionPage',
  components: {},
  props: {},
  data() {
    // quickfix to have components available to pass as props
    return {
      prev_rest: '',
      prev_url: '',
      menu_count: 1,
      detail_list: [],
      img_url: 'loading',
      price: 0,
    };
  },
  methods: {
    click_remove() {
      if (this.menu_count < 2) {
        alert('최소주문 개수입니다');
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
      this.prev_url = '#/allmenu/' + this.prev_rest;
      location.href = this.prev_url;
    },
    add_cart() {
      alert('Comming Soon..');
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
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap');

.detail-page,
.detail-page * {
  box-sizing: border-box;
}
.detail-page {
  background: #ffffff;
  width: 100%;
  height: 100vh;
  position: absolute;
}
.description-page {
  width: 100%;
  height: calc(var(--hv, 1vh) * 100 - 50px);
  position: absolute;
  overflow-y: scroll;
}
.menu-img {
  background: linear-gradient(to left, #d9d9d9, #d9d9d9);
  width: 100%;
  height: 282px;
  position: absolute;
  left: 0px;
  top: 0px;
}

.arrow-back-background {
  width: 60px;
  height: 60px;
  position: absolute;
  background: rgba(255, 255, 255, 0.8);
  border-radius: 21px;
  border: none;
  top: 50px;
  left: 20px;
  cursor: pointer;
}
.arrow-back-background img {
  width: 32px;
  height: 24px;
  padding-top: 3px;
  padding-left: 8px;
}

.menu-name {
  color: #000000;
  text-align: left;
  font: 500 16px 'Rubik', sans-serif;
  position: absolute;
  left: 5.1%;
  top: 310px;
  width: 88.5%;
}
.details {
  color: #000000;
  text-align: right;
  font: 500 14px 'Rubik', sans-serif;
  position: absolute;
  left: 5.1%;
  top: 362px;
}
.detail-text {
  color: linear-gradient(
    180deg,
    rgba(0, 0, 0, 1) 0%,
    rgba(0, 0, 0, 1) 93.75%,
    rgba(0, 0, 0, 0) 100%
  );
  text-align: left;
  font: 400 10px 'Rubik', sans-serif;
  position: absolute;
  left: 5.1%;
  top: 391px;
  width: 90%;
  height: 101px;
}
.allergy-tag {
  color: #000000;
  text-align: right;
  font: 500 14px 'Rubik', sans-serif;
  position: absolute;
  left: 5.1%;
  top: 522px;
}
.price {
  color: #000000;
  text-align: right;
  font: 500 14px 'Rubik', sans-serif;
  position: absolute;
  left: 5.1%;
  top: 662px;
}

.menu-price {
  color: #1c9181;
  text-align: left;
  font: 400 19px 'Rubik', sans-serif;
  position: absolute;
  left: 5.1%;
  top: 691px;
}

.remove-background {
  background: #d9d9d9;
  border-radius: 50%;
  width: 23px;
  height: 23px;
  position: absolute;
  left: 68.2%;
  top: 693px;
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
  position: absolute;
  left: 88.2%;
  top: 693px;
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
  font: 400 18px 'Rubik', sans-serif;
  position: absolute;
  left: 80%;
  top: 691px;
}
.Footer {
  width: 100%;
  height: 50px;
  position: absolute;
  bottom: 0px;
}
.add-cart {
  width: 90%;
  height: 40px;
  position: absolute;
  border-radius: 7px;
  background: #1c9181;
  border: none;
  color: white;
  margin-bottom: 10px;
  left: 5%;
  font: 400 18px 'Rubik', sans-serif;
}
</style>
