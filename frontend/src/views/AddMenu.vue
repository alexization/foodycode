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
      <div class="input-group">
        <div class="input-row">
          <span>메뉴이름</span>
          <input type="text" id="menu_name" />
        </div>
        <div class="input-row">
          <span>가격</span>
          <input type="text" id="menu_price" />
        </div>
        <div class="input-row">
          <span>메뉴설명</span>
          <textarea id="menu_detail"></textarea>
        </div>
      </div>
      <div class="allergy-text">
        <span>알러지 유발 성분 선택</span>
      </div>
      <div class="allergy-row">
        <div v-for="item in allergy_list" :key="item">
          <div>
            <label>
              <input type="checkbox" v-model="allergy" :value="item.number" />
              <span v-text="item.name"></span>
            </label>
          </div>
        </div>
      </div>
    </div>
    <div class="foot">
      <button>추가하기</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "DescriptionPage",
  components: {},
  props: {},
  data() {
    return {
      allergy_list: [
        { name: "Abalone", number: "19" },
        {
          name: "Beef",
          number: "16",
        },
        {
          name: "Buckwheat",
          number: "3",
        },
        {
          name: "Chicken",
          number: "15",
        },
        {
          name: "Crab",
          number: "8",
        },
        {
          name: "Egg",
          number: "1",
        },
        {
          name: "Mackerel",
          number: "7",
        },
        {
          name: "Milk",
          number: "2",
        },
        {
          name: "Mussel",
          number: "18",
        },
        {
          name: "Oyster",
          number: "20",
        },
        {
          name: "Peach",
          number: "11",
        },
        {
          name: "Peanut",
          number: "4",
        },
        {
          name: "Pine nut",
          number: "21",
        },
        {
          name: "Pork",
          number: "10",
        },
        {
          name: "Sesame",
          number: "23",
        },
        {
          name: "Shellfish",
          number: "17",
        },
        {
          name: "Shrimp",
          number: "9",
        },
        {
          name: "Soy",
          number: "5",
        },
        {
          name: "Squid",
          number: "22",
        },
        {
          name: "Sulfites",
          number: "13",
        },
        {
          name: "Tomato",
          number: "12",
        },
        {
          name: "Walnut",
          number: "14",
        },
        {
          name: "Wheat",
          number: "6",
        },
        {
          name: "None",
          number: "none",
        },
      ],
    };
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
.input-group {
  position: relative;
  top: 40px;
  height: 200px;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
}
.input-row {
  display: flex;
  justify-content: space-evenly;
  margin-bottom: 10px;
}
.input-row span {
  width: 20%;
  text-align: center;
}
.input-row input[type="text"][id="menu_name"] {
  width: 60%;
  height: 25px;
  border-radius: 5px;
  border: 1px solid #1c9181;
  padding-left: 10px;
}
.input-row input[type="text"][id="menu_price"] {
  width: 60%;
  height: 25px;
  border-radius: 5px;
  border: 1px solid #1c9181;
  padding-left: 10px;
}
.input-row textarea {
  width: 60%;
  height: 120px;
  border-radius: 5px;
  border: 1px solid #1c9181;
  padding: 10px;
}
.allergy-text {
  position: relative;
  top: 60px;
  width: 100%;
}
.allergy-text span {
  margin-left: 20px;
}
.allergy-row {
  position: relative;
  top: 80px;
  width: 100%;
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
  padding-bottom: 60px;
}
.allergy-row div {
  display: flex;
  width: 30%;
  margin-bottom: 10px;
  justify-content: center;
}
.allergy-row div label {
  cursor: pointer;
}
.allergy-row div label input[type="checkbox"] {
  display: none;
}
.allergy-row div label span {
  position: relative;
  display: inline-block;
  background: #f1f1f1;
  border-radius: 5px;
  width: 110px;
  height: 30px;
  color: #000000;
  text-align: center;
  font: 400 17px "Noto Sans", sans-serif;
  padding-top: 4px;
  transition: 0.5s;
  overflow: hidden;
}
.allergy-row div label span::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
}
.allergy-row div label input[type="checkbox"]:checked ~ span {
  background: #42b2a3;
}
.foot {
  position: fixed;
  max-width: 500px;
  width: 100%;
  height: 60px;
  bottom: 0;
}
.foot button {
  background: #42b2a3;
  width: 100%;
  height: 100%;
  border: none;
  color: #fff;
  text-align: center;
  font-family: Noto Sans KR;
  font-size: 20px;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
  letter-spacing: 1.2px;
}
</style>
