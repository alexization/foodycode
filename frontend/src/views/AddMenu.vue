<template>
  <div>
    <div class="AddMenu-Header">
      <div class="back-button">
        <button class="back">
          <img src="@/assets/icon/arrow_back_iOS.png" />
        </button>
      </div>
      <div class="title">
        <span>메뉴 정보 변경</span>
      </div>
      <div class="empty"></div>
    </div>

    <div class="description-page">
      <div class="first-row">
        <div>
          <span>음식 소개 사진</span>
        </div>
        <div>
          <button>이미지 업로드</button>
        </div>
      </div>
      <div class="menu-img">
        <div class="menu-rect">
          <img src="@/assets/menu/menu_init.png" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "DescriptionPage",
  components: {},
  props: {},
  data() {
    return {};
  },
};
</script>
<style scoped>
.description-page,
.description-page * {
  box-sizing: border-box;
}
.AddMenu-Header {
  position: relative;
  top: 0;
  width: 100%;
  height: 70px;
  display: flex;
  align-items: center;
}
.back-button {
  width: 20%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.back {
  width: 30px;
  height: 30px;
  background: none;
  border: none;
}
.back img {
  width: 100%;
  height: 100%;
}
.title {
  width: 60%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.empty {
  width: 20%;
  height: 100%;
}
.description-page {
  background: #ffffff;
  width: 100%;
  height: 100vh;
  position: relative;
  overflow-y: auto;
  display: flex;
  flex-direction: column;
}
.first-row {
  width: 100%;
  height: 30px;
  top: 10px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: relative;
}
.first-row span {
  margin-left: 30px;
}
.first-row button {
  margin-right: 20px;
  width: 110px;
  height: 26px;
  flex-shrink: 0;
  border-radius: 10px;
  border: 1px solid #1c9181;
  background: #1c9181;
  color: #fff;
  text-align: center;
  font-family: Noto Sans KR;
  font-size: 15px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  letter-spacing: 0.9px;
}
.menu-img {
  width: 100%;
  height: 190px;
  top: 20px;
  position: relative;
  display: flex;
  justify-content: center;
}
.menu-rect {
  width: 90%;
  height: 100%;
  border-radius: 9px;
}
.menu-rect img {
  width: 100%;
  height: 100%;
  border-radius: 9px;
}
</style>
