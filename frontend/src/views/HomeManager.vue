<template>
  <Header></Header>
  <div class="manager-page">
    <div class="manager-name" v-text="managerName"></div>
    <div class="button-group">
      <div class="run-toggle">
        <span class="open-close-text" v-if="manage_status === false"
          >가게 오픈하기</span
        >
        <span class="open-close-text" v-else>가게 문 닫기</span>
        <input type="checkbox" id="switch" @click="open_close" />
        <label for="switch"></label>
      </div>
      <div class="manage-button-group">
        <div class="manage-restaurant" @click="edit_restaurant">
          <img src="@/assets/icon/shop.png" />
          <span>가게 관리</span>
        </div>
        <div class="manage-menu" @click="edit_menu">
          <img src="@/assets/icon/fork_knife.png" />
          <span>메뉴 관리</span>
        </div>
      </div>
      <div class="order-status" @click="order_status">
        <img src="@/assets/icon/order_white.png" />
        <span>주문 현황</span>
      </div>
      <div
        class="black-box"
        v-if="manage_status === false"
        @click="disable_order"
      >
        <img src="@/assets/icon/lock.png" />
      </div>
    </div>
  </div>
</template>
<script>
import Header from '@/components/manager/HomeHeader.vue';

export default {
  name: 'LandingPage',
  components: { Header },
  props: {
    managerName: {
      type: String,
      default: 'Manager ' + '님 어서오세요',
    },
  },
  data() {
    return {
      manage_status: false,
    };
  },
  methods: {
    edit_restaurant() {
      location.href = '#/restedit';
    },
    edit_menu() {
      location.href = '#/menuedit';
    },
    open_close() {
      this.manage_status = !this.manage_status;
      console.log(this.manage_status);
    },
    disable_order() {
      alert('가게를 오픈해야합니다.');
    },
    order_status() {
      alert('Comming Soon..');
    },
  },
};
</script>
<style scoped>
.manager-page,
.manager-page * {
  box-sizing: border-box;
}
.manager-page {
  top: 70px;
  background: #ffffff;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 70px);
  position: absolute;
  overflow-y: auto;
}
.manager-name {
  color: #000000;
  text-align: left;
  font: 500 18px 'Noto Sans KR', sans-serif;
  position: absolute;
  top: 30px;
  padding-left: 30px;
  width: 100%;
}
.button-group {
  position: absolute;
  display: flex;
  top: 70px;
  height: 440px;
  width: 100%;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}
.manage-button-group {
  width: 100%;
  display: flex;
  align-items: center;
  flex-direction: row;
  justify-content: space-evenly;
}
.run-toggle {
  background: #1c9181;
  border-radius: 18px;
  width: 90%;
  height: 85px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.open-close-text {
  width: 50%;
  color: #ffffff;
  text-align: left;
  font: 500 20px 'Noto Sans KR', sans-serif;
}
.manage-toggle {
  background: #fefefe;
  border-radius: 37px;
  width: 100px;
  height: 33px;
}

.manage-restaurant {
  background: #ececec;
  border-radius: 18px;
  width: 40%;
  height: 155px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.manage-restaurant img {
  width: 50px;
  height: 50px;
}
.manage-restaurant span {
  color: #1c9181;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 1.2px;
  margin-top: 20px;
}
.manage-menu {
  background: #ececec;
  border-radius: 18px;
  width: 40%;
  height: 155px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.manage-menu img {
  width: 50px;
  height: 50px;
}
.manage-menu span {
  color: #1c9181;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 1.2px;
  margin-top: 20px;
}
.order-status {
  background: #1c9181;
  border-radius: 18px;
  width: 90%;
  height: 85px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.order-status img {
  width: 40px;
  height: 35px;
}
.order-status span {
  color: #fff;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 1.2px;
  margin-left: 20px;
}
input[type='checkbox'] {
  height: 0;
  width: 0;
  visibility: hidden;
}
.black-box {
  background: rgba(0, 0, 0, 0.7);
  border-radius: 18px;
  width: 90%;
  height: 85px;
  position: absolute;
  top: 355px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.black-box img {
  width: 50px;
  height: 50px;
}
label {
  width: 50%;
  cursor: pointer;
  text-indent: -9999px;
  width: 100px;
  height: 34px;
  background: #6c6c6c;
  display: block;
  border-radius: 100px;
  position: relative;
}

label:after {
  content: '';
  position: absolute;
  top: 5px;
  left: 5px;
  width: 24px;
  height: 24px;
  background: #d2d2d2;
  border-radius: 90px;
  transition: 0.3s;
}

input:checked + label {
  background: white;
}

input:checked + label:after {
  left: calc(100% - 5px);
  transform: translateX(-100%);
  background: #1c9181;
}

label:active:after {
  width: 30px;
}
</style>
