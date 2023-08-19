<template>
  <div class="sign-up-page-register">
    <div class="register-page">
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
        <input
          type="password"
          id="pw_confirm"
          name="pw_confirm"
          maxlength="32"
        />
      </div>

      <div class="user-name">User Name</div>

      <div class="name-input">
        <input type="text" id="user_name" name="user_name" />
      </div>
      <div class="Age">Age</div>
      <div class="Country">Country</div>

      <div class="age-input">
        <input type="number" id="age" name="age" pattern="\d*" />
      </div>

      <div class="country-input">
        <input type="text" id="country" name="country" />
      </div>

      <div class="gender">Gender</div>
      <div class="select-gender">
        <input type="radio" id="male" name="gender" value="남" /><label
          for="male"
          >Male</label
        >
        <input type="radio" id="female" name="gender" value="여" /><label
          for="female"
          >Female</label
        >
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
      register_data: [],
    };
  },
  methods: {
    click_back() {
      location.href = "#/signup";
    },
    click_confirm() {
      alert("Click Confirm");
    },
    async click_register() {
      this.register_data.push(document.getElementById("uid").value);
      this.register_data.push(document.getElementById("pw").value);
      this.register_data.push(document.getElementById("user_name").value);
      var radios = document.getElementsByName("gender");

      radios.forEach((elem) => {
        if (elem.checked) {
          this.register_data.push(elem.value);
        }
      });
      this.register_data.push(document.getElementById("age").value);
      this.register_data.push(document.getElementById("country").value);

      this.$emit("register_value", this.register_data);
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
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 130px);
  top: 130px;
  position: absolute;
}
.register-page {
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 190px);
  position: absolute;
  overflow-x: clip;
  overflow-y: scroll;
}
.uid {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 29.8px;
}

input[type="text"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 65.9%;
  height: 30.4px;
}
input[type][id="user_name"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6%;
  height: 30.4px;
}
input[type][id="country"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 52.6%;
  height: 30.4px;
}

input[type="password"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6%;
  height: 30.4px;
}
input[type="number"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 21.8%;
  height: 30.4px;
}
.uid-input {
  position: absolute;
  left: 7.7%;
  top: 61.9px;
  width: 100%;
}
.confirm {
  background: #ffffff;
  border-style: solid;
  border-color: #000000;
  border-width: 1px;
  width: 19.2%;
  height: 30.4px;
  position: absolute;
  left: 73.1%;
  top: 61.9px;
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
  left: 7.7%;
  top: 131.9px;
}
.password-input {
  position: absolute;
  left: 7.7%;
  top: 164.8px;
  width: 100%;
}
.password-confrim {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 210.4px;
}
.confirm-input {
  position: absolute;
  left: 7.7%;
  top: 243.3px;
  width: 100%;
}
.user-name {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 313.4px;
}
.name-input {
  position: absolute;
  left: 7.7%;
  top: 346.3px;
  width: 100%;
}
.gender {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 468.7px;
}

.select-gender {
  position: absolute;
  top: 502px;
  width: 100%;
  height: 30px;
  padding-left: 10%;
  padding-right: 10%;
}
.select-gender input[type="radio"] {
  display: none;
}
.select-gender input[type="radio"] + label {
  display: inline-block;
  cursor: pointer;
  height: 30px;
  width: 50%;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  text-align: center;
  font: 400 14px "Noto Sans", sans-serif;
}
.select-gender input[type="radio"] + label {
  background-color: #fff;
  color: black;
}
.select-gender input[type="radio"]:checked + label {
  transition: 0.5s;
  background-color: #1c9181;
  color: #fff;
}
.Age {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 391px;
}
.Country {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 38.5%;
  top: 391px;
}
.age-country {
  position: absolute;
  inset: 0;
}
.age-input {
  position: absolute;
  left: 7.7%;
  top: 424px;
  width: 100%;
}

.country-input {
  position: absolute;
  left: 38.5%;
  top: 424px;
  width: 100%;
}

.Register {
  background: #1c9181;
  width: 100%;
  height: 60px;
  position: absolute;
  bottom: 0px;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Noto Sans", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
</style>
