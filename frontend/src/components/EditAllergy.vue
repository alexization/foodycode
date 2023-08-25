<template>
  <div>
    <div class="user-alg-box">
      <div class="alg-tag" v-for="allergy in allergyList" :key="allergy">
        {{ allergy }}
      </div>
    </div>
    <div class="selecting-page">
      <div class="button-frame">
        <div class="frame-button">
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="19" />
              <span>Abalone</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="15" />
              <span>Chicken</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="7" />
              <span>Mackerel</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="20" />
              <span>Oyster</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="10" />
              <span>Pork</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="5" />
              <span>Soy</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="14" />
              <span>Walnut</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="none" />
              <span>None</span>
            </label>
          </div>
        </div>
      </div>
      <div class="button-frame-second">
        <div class="frame-button">
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="16" />
              <span>Beef</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="8" />
              <span>Crab</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="2" />
              <span>Milk</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="11" />
              <span>Peach</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="17" />
              <span>Shellfish</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="13" />
              <span>Sulfites</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="6" />
              <span>Wheat</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="none" />
              <span>None</span>
            </label>
          </div>
          <div></div>
        </div>
      </div>
      <div class="button-frame-third">
        <div class="frame-button">
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="3" />
              <span>Buckwheat</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="1" />
              <span>Egg</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="18" />
              <span>Mussel</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="4" />
              <span>Peanut</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="9" />
              <span>Shrimp</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="12" />
              <span>Tomato</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="none" />
              <span>None</span>
            </label>
          </div>
          <div>
            <label>
              <input type="checkbox" v-model="allergy" value="none" />
              <span>None</span>
            </label>
          </div>
        </div>
      </div>

      <button class="Register-button" @click="click_edit">Edit</button>

      <div
        class="please-select-the-food-you-are-allergic-to-from-the-following"
      >
        Please select the food you are allergic to from the following.
      </div>

      <div class="excludes-menus-containing-the-selected-food">
        Excludes menus containing the selected food
      </div>
    </div>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";

import axios from "axios";

export default {
  data() {
    return {
      allergy: [],
      arrow_back,
      line,
      allergyList: [],
    };
  },
  async created() {
    axios
      .get("/api/useralg")
      .then((response) => {
        response.data.useralgs.sort();
        this.userName = response.data.uname;
        this.allergyList = response.data.useralgs;
      })
      .catch((error) => {});
  },
  methods: {    
    click_edit() {
      
      console.log("asd");
   
      axios
      .put("/api/useralg", { 
        arr_algid : this.allergy
      })
      .then((res) => { 
        console.log(res.data.success);
        if (res.data.success) {
          alert("수정 완료!");
          this.$router.go(this.$router.currentRoute);
        } else {
          alert(res.data);
        }
      });
   

    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;500;600;700;800&display=swap");

.user-alg-box {
  position: relative;
  top: 80px;
  display: flex;
  justify-content: flex-start;
  overflow-x: auto;
  box-sizing: border-box;
  width: 100%;
  height: 59px;  
  padding: 10px 7% 10px;
  background: #ffffff;
}

.alg-tag {
  position: relative;
  height: 35px;
  padding: 4px 10px 0px;
  border: none;
  border-radius: 15px;
  margin: 0px 2.5px;
  background: rgba(28, 145, 129, 0.1);
  color: rgba(28, 145, 129, 1);
  letter-spacing: 1.2px;
  font: 400 16px "Noto Sans", sans-serif;
  text-align: center;
}

.user-alg-box::-webkit-scrollbar {
  display: none;
}

.selecting-page * {
  box-sizing: border-box;
}
.selecting-page {
  background: #ffffff;
  width: 100%;
  height: 83.4vh;
  top: 16.6vh;
  position: absolute;
  overflow-y: auto;
}
.button-frame {
  display: inline-flex;
  flex-direction: column;
  gap: 0vw;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 7.7vw;
  top: 16.6vh;
}
.button-frame-second {
  display: inline-flex;
  flex-direction: column;
  gap: 0vw;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 37.2vw;
  top: 16.6vh;
}
.button-frame-third {
  display: inline-flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 66.7vw;
  top: 16.6vh;
}

.Register-button {
  background: #1c9181;
  width: 100%;
  height: 49.8px;
  position: absolute;
  left: 0px;
  top: 77.5vh;
  color: #ffffff;
  text-align: center;
  font: 400 30px "Jua", sans-serif;
  letter-spacing: 1.8px;
  border: none;
  cursor: pointer;
}

.please-select-the-food-you-are-allergic-to-from-the-following {
  color: #000000;
  text-align: center;
  font: 500 20px "Noto Sans", sans-serif;
  position: absolute;
  left: 16px;
  top: 2.4vh;
  width: 91.8%;
  height: 6.8vh;
}
.excludes-menus-containing-the-selected-food {
  color: #000000;
  text-align: center;
  font: 300 13px "Noto Sans", sans-serif;
  position: absolute;
  left: 36px;
  top: 9.5vh;
  width: 81.3%;
  height: 2.3vh;
}
.frame-button {
  max-width: 84.6vw;
  margin: 0 auto;
  flex-wrap: wrap;
}
.frame-button div {
  margin-bottom: 10.1px;
}
.frame-button div label {
  cursor: pointer;
}
.frame-button div label input[type="checkbox"] {
  display: none;
}
.frame-button div label span {
  position: relative;
  display: inline-block;
  background: #f1f1f1;
  border-radius: 5px;
  width: 25.6vw;
  height: 5vh;
  color: #000000;
  text-align: center;
  font: 400 17px "Noto Sans", sans-serif;
  padding-top: 9px;
  transition: 0.5s;
  overflow: hidden;
}
.frame-button div label span::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
}
.frame-button div label input[type="checkbox"]:checked ~ span {
  background: #42b2a3;
}
</style>
