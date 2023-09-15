<template>
  <div class="wrapper">
    <div class="user-alg-box">
      <div class="alg-tag" v-for="allergy in allergyList" :key="allergy">
        {{ allergy }}
      </div>
    </div>
    <div class="selecting-page">
      <div class="Info-Group">
        <div class="Main-Info">
          Please select the food you are allergic to from the following.
        </div>
        <div class="Semi-Info">Excludes menus containing the selected food</div>
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

      <button class="Register-button" @click="click_edit">Register</button>
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
      allergy_list: [
        { 
          name: "Abalone", 
          number: "19" 
        },
        {
          name: "Almond",
          number: "24",
        },
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
      ],
    };
  },
  async created() {
    axios
      .get("/api/useralg")
      .then((response) => {
        response.data.useralgs.sort();
        this.userName = response.data.uname;
        this.allergyList = response.data.useralgs;
        this.allergy = response.data.userId;
      })
      .catch((error) => {});
  },
  methods: {
    click_edit() {
      console.log("asd");

      axios
        .put("/api/useralg", {
          arr_algid: this.allergy,
        })
        .then((res) => {
          console.log(res.data.success);
          if (res.data.success) {
            alert("수정 완료!");
            this.$router.push({ path: "/" });
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

.wrapper {
  position: absolute;
  top: 80px;
  overflow-y: auto;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 80px);
  background: #ffffff;
}

.user-alg-box {
  position: absolute;
  top: 0px;
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
  top: 59px;
  height: calc(var(--vh, 1vh) * 100 - 139px);
  position: absolute;
}
.Info-Group {
  height: 80px;
  top: 10px;
  position: absolute;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.Main-Info {
  color: #000000;
  text-align: center;
  font: 500 20px "Noto Sans", sans-serif;
  position: absolute;
  width: 90%;
  height: 60px;
}
.Semi-Info {
  color: #000000;
  text-align: center;
  font: 300 13px "Noto Sans", sans-serif;
  position: absolute;
  top: 60px;
  width: 85%;
  height: 20px;
}
.allergy-row {
  top: 100px;
  position: absolute;
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
  height: 42px;
  color: #000000;
  text-align: center;
  font: 400 17px "Noto Sans", sans-serif;
  padding-top: 9px;
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
.Register-button {
  background: #1c9181;
  width: 100%;
  max-width: 500px;
  height: 60px;
  color: #ffffff;
  text-align: center;
  font: 400 30px "Jua", sans-serif;
  letter-spacing: 1.8px;
  border: none;
  cursor: pointer;
  position: fixed;
  bottom: 0;
}

.wrapper::-webkit-scrollbar {
  display: none;
}
</style>
