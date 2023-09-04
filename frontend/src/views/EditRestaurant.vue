<template>
  <div>
    <Header @change_status="status" @post_data="available_post"></Header>
    <div class="edit-page">
      <div class="preview-text">
        <img src="@/assets/icon/visibility.png" />
        <span>가게 소개화면 미리보기</span>
      </div>
      <div class="restaurant-list">
        <RestaurantCard
          :restaurantName="restaurantData.img_url"
          :title="restaurantData.rest_name"
          :telNum="restaurantData.tel"
        />
      </div>
      <div class="line"></div>

      <div class="edit-text">
        <span>가게 대표 사진</span>
        <button v-if="this.edit_status === true" @click="img_upload">
          이미지 업로드
        </button>
      </div>
      <div class="edit-box">
        <div class="image-box">
          <img :src="require(`@/assets/restaurant/${img_url}.png`)" />
          <div v-if="this.edit_status === false">
            <div class="input-box">
              <span>식당이름</span>
              <input type="text" :value="restaurantData.rest_name" readonly />
            </div>
            <div class="input-box">
              <span>전화번호</span>
              <input type="text" :value="restaurantData.tel" readonly />
            </div>
            <div class="input-box">
              <span>식당주소</span>
              <input type="text" :value="restaurantData.address" readonly />
            </div>
          </div>
          <div v-else>
            <div class="input-box">
              <span>식당이름</span>
              <input
                type="text"
                id="rest_name"
                :placeholder="restaurantData.rest_name"
              />
            </div>
            <div class="input-box">
              <span>전화번호</span>
              <input type="text" id="tel" :placeholder="restaurantData.tel" />
            </div>
            <div class="input-box">
              <span>식당주소</span>
              <input
                type="text"
                id="address"
                :placeholder="restaurantData.address"
              />
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
      img_url: "loading",
      list: ["rest_name", "tel", "address"],
      restaurantData: {},
      modifyData: {},
    };
  },
  async created() {
    axios.get("/api/restuser").then((response) => {
      console.log(response.data);
      this.restaurantData = response.data;
      this.img_url = this.restaurantData.img_url;
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
      for (var data in this.restaurantData) {
        if (this.list.includes(data)) {
          if (document.getElementById(data).value === "") {
            this.modifyData[data] = this.restaurantData[data];
          } else {
            this.modifyData[data] = document.getElementById(data).value;
          }
        }
      }
      console.log(this.modifyData);

      axios
        .put("/api/restuser", {
          name: this.modifyData.rest_name,
          address: this.modifyData.address,
          ceo_name: "testceoname",
          tel: this.modifyData.tel,
        })
        .then((res) => {
          if (res.data.success) {
            alert("정보 수정 완료!");
            window.location.reload(true);
          } else {
            alert("오류 발생");
          }
        });
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");
.edit-page {
  overflow-y: auto;
  overflow-x: hidden;
  position: absolute;
  box-sizing: border-box;
  width: 100%;
  top: 70px;
  height: calc(var(--vh, 1vh) * 100 - 70px);
}
.preview-text {
  position: absolute;
  left: 30px;
  top: 10px;
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
  top: 30px;
  box-sizing: border-box;
  width: 100%;
  height: 260px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.line {
  width: 100%;
  height: 2px;
  position: absolute;
  top: 300px;
  background: #a8a8a8;
}
.edit-text {
  width: 100%;
  top: 320px;
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
  top: 350px;
  width: 100%;
  height: 350px;
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
</style>
