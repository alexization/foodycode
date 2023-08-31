<template>
  <Header></Header>
  <div class="manager-page">
    <div class="manager-name" v-text="managerName"></div>
    <div class="button-group">
      <div class="run-toggle">
        <span class="open-text">가게 오픈하기</span>
        <div class="manage-toggle"></div>
      </div>
      <div class="manage-button-group">
        <div class="manage-restaurant">
          <img src="@/assets/icon/shop.png" />
          <span>가게 관리</span>
        </div>
        <div class="manage-menu">
          <img src="@/assets/icon/fork_knife.png" />
          <span>메뉴 관리</span>
        </div>
      </div>
      <div class="order-status">
        <img src="@/assets/icon/order_white.png" />
        <span>주문 현황</span>
      </div>
    </div>
  </div>
</template>
<script>
import Header from "@/components/manager/HomeHeader.vue";

export default {
  name: "LandingPage",
  components: { Header },
  props: {
    managerName: {
      type: String,
      default: "Manager " + "님 어서오세요",
    },
  },
  data() {
    // quickfix to have components available to pass as props
    return {};
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
  font: 500 18px "Noto Sans KR", sans-serif;
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
  justify-content: space-around;
}
.open-text {
  color: #ffffff;
  text-align: left;
  font: 500 20px "Noto Sans KR", sans-serif;
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
</style>
