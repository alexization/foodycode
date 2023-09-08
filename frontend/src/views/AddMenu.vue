<template>
  <div>
    <div class="AddMenu-Header">
      <div class="back-button">
        <button class="back" @click="click_back">
          <img src="@/assets/icon/arrow_back_iOS.png" />
        </button>
      </div>
      <div class="title">
        <span>메뉴 추가</span>
      </div>
      <div class="empty"></div>
    </div>

    <div class="description-page" id="scroll-page">
      <div class="first-row">
        <div>
          <span>음식 소개 사진</span>
        </div>
        <div class="image-upload">
          <label for="file">이미지 업로드</label>
          <input
            type="file"
            ref="image"
            id="file"
            accept="image/png, image/jpeg, image/jpg"
            @change="img_uploaded"
          />
        </div>
      </div>
      <div class="menu-img">
        <div class="menu-rect">
          <img v-show="isPreview === false" src="@/assets/menu/menu_init.png" />
          <img v-show="isPreview === true" :src="imageUploaded" />
        </div>
      </div>
      <div class="input-group" id="input-group-id">
        <div class="input-row">
          <span>메뉴이름</span>
          <div>
            <input type="text" id="menu_name" />
            <button @click="recommend">추천받기</button>
          </div>
        </div>
        <div class="recommend-kor" v-if="recommend_status === true">
          <div class="first-div">
            <div class="close-button">
              <button @click="close_recommend">
                <img src="@/assets/icon/close.png" />
              </button>
            </div>
            <div class="info-group">
              <div v-for="item in recommend_list" :key="item">
                <div
                  class="text-button"
                  @click="recommend_detail(item, $event)"
                >
                  <div class="recommend-text">{{ item.Kor }}</div>
                  <div class="select-button">
                    <button>
                      <img src="@/assets/icon/right-arrow.png" />
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="recommend-detail" v-if="recommend_detail_status === true">
          <div class="second-div">
            <div class="close-button-detail">
              <button @click="close_recommend_detail">
                <img src="@/assets/icon/close.png" />
              </button>
            </div>
            <div class="info-group-detail">
              <div class="text-button-detail">
                <div class="text-detail">
                  <div class="korea">
                    <img src="@/assets/icon/korea.png" />
                    <div class="text-div">
                      <div class="korea-text">{{ this.current_data.Kor }}</div>
                      <div class="roman-text">{{ this.current_data.Rom }}</div>
                    </div>
                  </div>
                  <div class="english">
                    <img src="@/assets/icon/usa.png" />
                    <div class="english-text">{{ this.current_data.Eng }}</div>
                  </div>
                </div>
                <div class="button-detail">
                  <button @click="confirm_menu">적용</button>
                </div>
              </div>
            </div>
          </div>
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
      <div class="ingd-text">
        <span>식재료 검색</span>
      </div>
      <div class="ingd-group">
        <div class="ingd-search">
          <img src="@/assets/icon/search.png" />
          <input type="text" id="ingd_name" />
          <button @click="[handleClick(), get_alg()]">검색</button>
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
      <button @click="add_menu">추가하기</button>
    </div>
    <div>
      <searchBaseModalVue
        ref="modal"
        :content="modalContent"
        @get_allergy="allergy_info"
      ></searchBaseModalVue>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import { ref } from "vue";
import searchBaseModalVue from "../components/manager/searchBaseModal.vue";

export default {
  name: "DescriptionPage",
  components: {
    searchBaseModalVue,
  },
  setup() {
    const modal = ref(null);
    const modalContent = ref([]);
    const result = ref("");

    const handleClick = async () => {
      console.log(await modal.value.show());
    };
    return {
      modal,
      modalContent,
      result,
      handleClick,
    };
  },
  props: {},
  data() {
    return {
      current_data: Array,
      recommend_list: Array,
      recommend_status: false,
      recommend_detail_status: false,
      image: "",
      imageUploaded: "",
      isPreview: false,
      menuData: {},
      allergy: [],
      allergy_list: [
        { name: "전복", number: "19" },
        {
          name: "소고기",
          number: "16",
        },
        {
          name: "메밀",
          number: "3",
        },
        {
          name: "닭고기",
          number: "15",
        },
        {
          name: "게",
          number: "8",
        },
        {
          name: "달걀",
          number: "1",
        },
        {
          name: "고등어",
          number: "7",
        },
        {
          name: "우유",
          number: "2",
        },
        {
          name: "홍합",
          number: "18",
        },
        {
          name: "굴",
          number: "20",
        },
        {
          name: "복숭아",
          number: "11",
        },
        {
          name: "땅콩",
          number: "4",
        },
        {
          name: "잣",
          number: "21",
        },
        {
          name: "돼지고기",
          number: "10",
        },
        {
          name: "참깨",
          number: "23",
        },
        {
          name: "조개",
          number: "17",
        },
        {
          name: "새우",
          number: "9",
        },
        {
          name: "간장",
          number: "5",
        },
        {
          name: "오징어",
          number: "22",
        },
        {
          name: "아황산염",
          number: "13",
        },
        {
          name: "토마토",
          number: "12",
        },
        {
          name: "호두",
          number: "14",
        },
        {
          name: "밀",
          number: "6",
        },
        {
          name: "없음",
          number: "none",
        },
      ],
    };
  },  
  methods: {
    click_back() {
      //나중에 수정 필요
      location.href = "#/menuedit";
    },
    add_menu() {
      this.menuData.allergyID = this.allergy;
      this.menuData.menuName = document.getElementById("menu_name").value;
      this.menuData.menuPrice = document.getElementById("menu_price").value;
      this.menuData.menuDetail = document.getElementById("menu_detail").value;
      this.menuData.menuKorName = this.current_data.Kor;
      this.menuData.menuRomanName = this.current_data.Rom;
      // menuData가 POST 할 데이터
      axios
        .post("/api/menu", {
          name: this.menuData.menuName,
          price: this.menuData.menuPrice,
          ing: this.menuData.menuDetail,
          arr_algid: this.menuData.allergyID,
          korName: this.menuData.menuKorName,
          RomName: this.menuData.menuRomanName,
        })
        .then((res) => {
          if (res.data.success) {
            alert("메뉴 추가 완료!");
            location.href = "#/menuedit";
          } else {
            alert("오류 발생");
          }
        });
    },
    get_alg() {
      const ingdName = document.getElementById("ingd_name").value;
      console.log(ingdName);
      axios.get(`/api/igd/${ingdName}`).then((response) => {
        console.log(response.data);
        this.modalContent = response.data;
      });
      document.getElementById("scroll-page").scrollTop =
        document.getElementById("scroll-page").scrollHeight;
    },
    allergy_info(data) {
      this.allergy = Array.from(data[0]);
      console.log(this.allergy);
    },
    async recommend() {
      this.recommend_status = true;
      const input_text = document.getElementById("menu_name").value;
      document.getElementById("input-group-id").style.height = "680px";
      let res = await axios({
        method: "GET",
        url: `api/translate/${input_text}`,
        data: {},
      }).then((res) => {
        console.log(res.data);
        this.recommend_list = res.data;
      });
    },
    close_recommend() {
      this.recommend_status = false;
    },
    recommend_detail(data) {
      this.recommend_status = false;
      this.recommend_detail_status = true;
      document.getElementById("input-group-id").style.height = "370px";
      console.log(data);
      this.current_data = data;
    },
    close_recommend_detail() {
      this.recommend_detail_status = false;
      this.recommend_status = true;
      document.getElementById("input-group-id").style.height = "680px";
    },
    confirm_menu() {
      document.getElementById("menu_name").value = this.current_data.Eng;
      this.recommend_detail_status = false;
    },
    img_uploaded() {
      this.image = this.$refs.image.files[0];
      this.imageUploaded = URL.createObjectURL(this.image)
      this.isPreview = true;
    },
  },
};
</script>
<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap");

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
  box-shadow: rgba(0, 0, 0, 0.4) 0 0 5px 0;
  z-index: 20;
}
.back-button {
  width: 20%;
  height: 100%;
  display: flex;
  align-items: flex-end;
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
  height: calc(var(--vh, 1vh) * 100 - 70px);
  position: relative;
  overflow-y: auto;
  overflow-x: hidden;
  display: flex;
  flex-direction: column;
}
.first-row {
  width: 100%;
  height: 30px;
  top: 10px;
  display: flex;
  align-items: center;
  position: relative;
}
.image-upload {
  position: relative;
  top: -13px;
  left: 60px;
  width: 50%;
}
.image-upload label {
  position: absolute;
  right: 20px;
  border-radius: 10px;
  border: 1px solid #1c9181;
  background: #1c9181;
  width: 70%;
  height: 26px;
  flex-shrink: 0;
  color: white;
  padding-top: 2px;
  text-align: center;
}
.image-upload input[type="file"] {
  position: absolute;
  width: 0;
  height: 0;
  padding: 0;
  overflow: hidden;
  border: 0;
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
.input-row div {
  width: 60%;
}
.input-row input[type="text"][id="menu_name"] {
  width: 70%;
  height: 25px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border: 1px solid #1c9181;
  padding-left: 10px;
  outline: none;
}
.input-row button {
  width: 30%;
  height: 25px;
  border: none;
  background: #1c9181;
  color: white;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
}
.recommend-kor {
  width: 70%;
  margin: auto;
  height: 450px;
  border: 1px solid #1c9181;
  margin-bottom: 20px;
  margin-top: 10px;
  border-radius: 5px;
  display: flex;
}
.first-div {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
}
.close-button {
  height: 10%;
  display: flex;
  justify-content: flex-end;
}
.close-button button {
  height: 15px;
  width: 15px;
  border: none;
  background: none;
  margin-right: 10px;
  margin-top: 8px;
}
.close-button img {
  width: 100%;
  height: 100%;
}
.info-group {
  height: 90%;
  width: 100%;
  display: flex;
  flex-direction: column;
}

.text-button {
  height: 35px;
  width: 90%;
  margin: auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border: 1px solid #42b7a8;
  margin-bottom: 5px;
  border-top-right-radius: 10px;
  border-bottom-left-radius: 10px;
}
.recommend-text {
  margin-left: 5px;
}
.select-button {
  margin-right: 5px;
}
.select-button button {
  border: none;
  background: none;
  width: 25px;
  height: 25px;
}
.select-button img {
  width: 100%;
  height: 100%;
}
.recommend-detail {
  width: 70%;
  margin: auto;
  height: 140px;
  border: 1px solid #1c9181;
  margin-bottom: 20px;
  margin-top: 10px;
  border-radius: 5px;
  display: flex;
}
.second-div {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
}
.close-button-detail {
  height: 20%;
  display: flex;
  justify-content: flex-end;
}
.close-button-detail button {
  height: 15px;
  width: 15px;
  border: none;
  background: none;
  margin-right: 10px;
  margin-top: 8px;
}
.close-button-detail img {
  width: 100%;
  height: 100%;
}
.info-group-detail {
  height: 80%;
  width: 100%;
  display: flex;
  flex-direction: column;
  margin-bottom: 10px;
}
.text-button-detail {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: row;
}
.text-detail {
  width: 80%;
  height: 100%;
  display: flex;
  flex-direction: column;
  margin-left: 10px;
}
.korea {
  width: 100%;
  height: 60%;
  display: flex;
  align-items: center;
}
.korea img {
  width: 32px;
  height: 32px;
  align-items: center;
}
.text-div {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 10px;
}
.korea-text {
  width: 100%;
  font: 500 16px "Noto Sans KR", sans-serif;
}
.roman-text {
  font: 300 14px "Noto Sans KR", sans-serif;
  color: #2e2e2e;
}
.english {
  width: 100%;
  height: 40%;
  display: flex;
  align-items: center;
}
.english img {
  width: 32px;
  height: 32px;
  align-items: center;
}

.english-text {
  margin-left: 10px;
  width: 100%;
  font: 500 16px "Noto Sans KR", sans-serif;
}
.button-detail {
  width: 20%;
  display: flex;
}
.button-detail button {
  border: none;
  background: #42b2a3;
  color: white;
  width: 90%;
  height: 30%;
  border-radius: 10px;
  margin: auto;
}
.input-row input[type="text"][id="menu_price"] {
  width: 60%;
  height: 25px;
  border-radius: 5px;
  border: 1px solid #1c9181;
  padding-left: 10px;
  outline: none;
}
.input-row textarea {
  width: 60%;
  height: 120px;
  border-radius: 5px;
  border: 1px solid #1c9181;
  padding: 10px;
}
.ingd-text {
  position: relative;
  top: 80px;
  width: 100%;
}
.ingd-text span {
  margin-left: 20px;
}
.ingd-group {
  display: flex;
  width: 100%;
  height: 50px;
  top: 100px;
  position: relative;
  justify-content: center;
}
.ingd-search {
  width: 80%;
  height: 50px;
  border: 1px solid #1c9181;
  border-radius: 20px;
  border-width: 2px;
  display: flex;
  align-items: center;
}
.ingd-search img {
  width: 32px;
  height: 32px;
  margin-left: 8px;
}
.ingd-search input[type="text"] {
  border: none;
  width: 100%;
  margin: 5px;
  height: 30px;
  outline: none;
}
.ingd-search button {
  width: 30%;
  height: 30px;
  margin-right: 5px;
  border: none;
  background: #1c9181;
  color: white;
  border-radius: 13px;
}
.allergy-text {
  position: relative;
  top: 140px;
  width: 100%;
}
.allergy-text span {
  margin-left: 20px;
}
.allergy-row {
  position: relative;
  top: 160px;
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
