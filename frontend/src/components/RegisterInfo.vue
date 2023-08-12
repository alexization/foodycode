<template>
  <div class="sign-up-page-register">
    <div class="uid">User ID</div>
    <div class="uid-input">
      <input type="text" id="uid" name="uid" maxlength="16" />
    </div>

    <button class="confirm" @click="click_confirm">Confirm</button>

    <div class="password">Password</div>
    <div class="password-input">
      <input type="password" id="pw" name="password" maxlength="32" />
    </div>

    <div class="password-confrim">Password Confirm</div>
    <div class="confirm-input">
      <input type="password" id="pw_confirm" name="pw_confirm" maxlength="32" />
    </div>

    <div class="user-name">User Name</div>

    <div class="name-input">
      <input type="text" id="user_name" name="user_name" />
    </div>

    <div class="gender">Gender</div>

    <button class="Female" id="female" @click="click_female">Female</button>

    <button class="Male" id="male" @click="click_male">Male</button>

    <div class="Age">Age</div>
    <div class="Country">Country</div>

    <div class="age-country">
      <div class="age-input">
        <input type="number" id="age" name="age" pattern="\d*" />
      </div>

      <div class="country-input">
        <input type="text" id="country" name="country" />
      </div>
    </div>

    <button class="Register" @click="click_register">Next</button>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";

import axios from "axios";
export default {
  data() {
    return {
      arrow_back,
      line,
    };
  },
  methods: {
    click_back() {
      location.href = "#/signup";
    },
    click_confirm() {
      alert("Click Confirm");
    },
    click_male() {
      document.getElementById("male").style.backgroundColor = "#1c9181";
      document.getElementById("female").style.backgroundColor = "white";
    },
    click_female() {
      document.getElementById("female").style.backgroundColor = "#1c9181";
      document.getElementById("male").style.backgroundColor = "white";
    },
    async click_register() {
      // const uid = document.getElementById("uid");
      // console.log(uid.value);
      // const password = document.getElementById("pw");
      // console.log(pw.value);
      // let res = await axios({
      //   method: "POST",
      //   url: "api/signup",
      //   data: {
      //     uid: uid.value,
      //     password: password.value,
      //   },
      // }).then((res) => {
      //   console.log(res.data);
      //   if (res.data.success) {
      //     alert("회원가입 완료! 로그인 페이지로 이동합니다.");
      //     location.href = "#/login";
      //   } else {
      //     alert(res.data);
      //   }
      // });
      this.$emit("change_page");
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap");

.sign-up-page-register,
.sign-up-page-register * {
  box-sizing: border-box;
}
.sign-up-page-register {
  background: #ffffff;
  width: 100vw;
  height: 83.4vh;
  top: 16.6vh;
  position: absolute;
  overflow: hidden;
}

.uid {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7vw;
  top: 5.9vh;
}

input[type="text"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 65.9vw;
  height: 3.6vh;
}
input[type][id="user_name"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6vw;
  height: 3.6vh;
}
input[type][id="country"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 52.6vw;
  height: 3.6vh;
}

input[type="password"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6vw;
  height: 3.6vh;
}
input[type="number"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 21.8vw;
  height: 3.6vh;
}
.uid-input {
  position: absolute;
  left: 7.7vw;
  top: 9.7vh;
}
.confirm {
  background: #ffffff;
  border-style: solid;
  border-color: #000000;
  border-width: 1px;
  width: 19.2vw;
  height: 3.6vh;
  position: absolute;
  left: 73.1vw;
  top: 9.7vh;
  text-align: center;
  font: 600 14px "Noto Sans", sans-serif;
  color: black;
  cursor: pointer;
}

.password {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7vw;
  top: 18vh;
}
.password-input {
  position: absolute;
  left: 7.7vw;
  top: 21.9vh;
}
.password-confrim {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7vw;
  top: 27.3vh;
}
.confirm-input {
  position: absolute;
  left: 7.7vw;
  top: 31.2vh;
}
.user-name {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7vw;
  top: 39.5vh;
}
.name-input {
  position: absolute;
  left: 7.7vw;
  top: 43.4vh;
}
.gender {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7vw;
  top: 57.9vh;
}
.Female {
  color: black;
  background-color: white;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 42.3vw;
  height: 3.6vh;
  position: absolute;
  left: 50vw;
  top: 61.8vh;
  text-align: center;
  font: 400 14px "Noto Sans", sans-serif;
  cursor: pointer;
  transition: 0.5s;
}
.Male {
  color: black;
  background-color: white;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 42.3vw;
  height: 3.6vh;
  position: absolute;
  left: 7.7vw;
  top: 61.8vh;
  text-align: center;
  font: 400 14px "Noto Sans", sans-serif;
  cursor: pointer;
  transition: 0.5s;
}
.Age {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7vw;
  top: 48.7vh;
}
.Country {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 38.5vw;
  top: 48.7vh;
}
.age-country {
  position: sticky;
  inset: 0;
}
.age-input {
  position: absolute;
  left: 7.7vw;
  top: 52.6vh;
}

.country-input {
  position: absolute;
  left: 38.5vw;
  top: 52.6vh;
}

.Register {
  background: #1c9181;
  width: 100vw;
  height: 7.1vh;
  position: absolute;
  left: 0vw;
  top: 76.3vh;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Noto Sans", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
</style>
