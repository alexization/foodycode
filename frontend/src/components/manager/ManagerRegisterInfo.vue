<template>
  <div class="sign-up-page-register">
    <div class="register-page">
      <div class="rest_id">아이디</div>
      <div class="rest_id-input">
        <input
          type="text"
          id="rest_id"
          name="rest_id"
          maxlength="16"
          v-model="user_id"
        />
      </div>

      <button class="confirm" @click="click_confirm">중복검사</button>
      <div class="id-confirm-status" v-if="confirm_id_status === true">
        <img src="@/assets/icon/correct.png" />
        <span class="available">사용 가능한 아이디입니다</span>
      </div>
      <div class="id-confirm-status" v-else-if="duplicate_status === true">
        <img src="@/assets/icon/failed.png" />
        <span class="not-available">중복된 아이디 입니다</span>
      </div>
      <div class="id-confirm-status" v-else-if="confirm_id_status === false">
        <img src="@/assets/icon/failed.png" />
        <span class="not-available">중복검사 체크를 완료해주세요</span>
      </div>

      <div class="password">비밀번호</div>
      <div class="password-input">
        <input
          type="password"
          id="pw"
          name="password"
          maxlength="32"
          v-model="user_pw"
        />
      </div>

      <div class="password-confrim">비밀번호 확인</div>
      <div class="confirm-input">
        <input
          type="password"
          id="pw_confirm"
          name="pw_confirm"
          maxlength="32"
          v-model="user_pw_confirm"
        />
      </div>
      <div class="confirm_status" v-if="current_status === false">
        <img src="@/assets/icon/failed.png" />
        <span class="not_match" id="status">비밀번호가 일치하지 않습니다</span>
      </div>
      <div class="confirm_status" v-else-if="current_status === true">
        <img src="@/assets/icon/correct.png" />
        <span class="match">비밀번호가 일치합니다</span>
      </div>

      <div class="manager-name">이름</div>

      <div class="name-input">
        <input
          type="text"
          id="manager_name"
          name="manager_name"
          v-model="user_name"
        />
      </div>
      <div class="rest-name">식당 이름</div>
      <div class="rest-name-input">
        <input
          type="text"
          id="rest_name"
          name="rest_name"
          v-model="rest_name"
        />
      </div>
      <div class="rest-tel">식당 전화번호</div>
      <div class="tel-group">
        <input type="tel" id="first" name="first" v-model="rest_tel_first" />
        <input type="tel" id="second" name="second" v-model="rest_tel_second" />
        <input type="tel" id="third" name="third" v-model="rest_tel_third" />
      </div>
      <div class="rest-address">식당 주소</div>
      <div class="address-input">
        <input type="text" id="address" name="address" v-model="rest_address" />
      </div>
    </div>
    <div class="foot">
      <button
        class="Register"
        @click="click_register"
        v-if="final_status == true"
      >
        다음으로
      </button>
      <button class="Register-else" @click="click_register" v-else disabled>
        다음으로
      </button>
    </div>
  </div>
</template>

<script>
import { ref } from "vue";
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";
import axios from "axios";

export default {
  setup() {
    return {
      user_id: ref(),
      user_pw: ref(),
      user_pw_confirm: ref(),
      user_name: ref(),
      rest_name: ref(),
      rest_tel_first: ref(),
      rest_tel_second: ref(),
      rest_tel_third: ref(),
      rest_address: ref(),
    };
  },
  data() {
    return {
      arrow_back,
      line,
      register_data: {},
      current_status: "",
      status_text: "Please Input Text",
      confirm_id_status: "",
      final_status: false,
      duplicate_status: false,
      overlap: "",
    };
  },
  methods: {
    async click_confirm() {
      const uid = this.user_id;
      let res = await axios({
        method: "POST",
        url: "/api/restconfirm",
        data: {
          uid: uid,
        },
      }).then((res) => {
        this.overlap = res.data.success;
      });

      if (this.overlap) {
        this.confirm_id_status = true;
        this.finalConfirm();
      } else {
        this.confirm_id_status = false;
        this.duplicate_status = true;
      }
    },
    async click_register() {
      this.register_data.id = document.getElementById("rest_id").value;
      this.register_data.pw = document.getElementById("pw").value;
      this.register_data.name = document.getElementById("manager_name").value;
      this.register_data.rest_name = document.getElementById("rest_name").value;

      this.register_data.tel =
        document.getElementById("first").value +
        "-" +
        document.getElementById("second").value +
        "-" +
        document.getElementById("third").value;

      this.register_data.address = document.getElementById("address").value;

      this.$emit("register_value", this.register_data);
    },
    checkPW() {
      this.user_password = document.getElementById("pw").value;
      this.confirm_password = document.getElementById("pw_confirm").value;
      if (this.user_password != this.confirm_password) {
        this.current_status = false;
      } else {
        this.current_status = true;
      }
    },
    finalConfirm() {
      if (
        this.current_status &&
        this.confirm_id_status &&
        this.user_name &&
        this.rest_name &&
        this.rest_address &&
        this.rest_tel_first &&
        this.rest_tel_second &&
        this.rest_tel_third
      ) {
        this.final_status = true;
      } else {
        this.final_status = false;
      }
    },
  },
  watch: {
    user_id() {
      this.confirm_id_status = false;
      this.duplicate_status = false;
      this.finalConfirm();
    },
    user_pw() {
      this.checkPW();
      this.finalConfirm();
    },
    user_pw_confirm() {
      this.checkPW();
      this.finalConfirm();
    },
    user_name() {
      this.finalConfirm();
    },
    rest_name() {
      this.finalConfirm();
    },
    rest_tel_first() {
      this.finalConfirm();
    },
    rest_tel_second() {
      this.finalConfirm();
    },
    rest_tel_third() {
      this.finalConfirm();
    },
    rest_address() {
      this.finalConfirm();
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
.rest_id {
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
  width: 84.6%;
  height: 30.4px;
  outline: none;
}
input[type][id="user_name"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6%;
  height: 30.4px;
  outline: none;
}
input[type][id="country"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 52.6%;
  height: 30.4px;
  outline: none;
}

input[type="password"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 84.6%;
  height: 30.4px;
  outline: none;
}
input[type="tel"] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 21.8%;
  height: 30.4px;
  outline: none;
}
.rest_id-input {
  position: absolute;
  left: 7.7%;
  top: 61.9px;
  width: 100%;
  outline: none;
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
.confirm_status {
  position: absolute;
  top: 280px;
  left: 7.7%;
}
.confirm_status img {
  width: 14px;
  height: 14px;
  vertical-align: middle;
}
.not_match {
  color: red;
  font: 600 14px "Noto Sans", sans-serif;
}
.match {
  color: #1c9181;
  font: 600 14px "Noto Sans", sans-serif;
}
.manager-name {
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
.rest-name {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 400px;
}
.rest-name-input {
  position: absolute;
  left: 7.7%;
  top: 435px;
  width: 100%;
}
.rest-tel {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 480px;
}
.tel-group {
  display: flex;
  position: absolute;
  top: 510px;
  width: 100%;
  justify-content: space-evenly;
}
.rest-address {
  color: #000000;
  text-align: left;
  font: 400 17px "Noto Sans", sans-serif;
  position: absolute;
  left: 7.7%;
  top: 560px;
}
.address-input {
  position: absolute;
  left: 7.7%;
  top: 600px;
  width: 100%;
}
.foot {
  position: fixed;
  width: 100%;
  bottom: 0;
  max-width: 500px;
}
.Register {
  background: #1c9181;
  width: 100%;
  height: 60px;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Noto Sans", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
.Register-else {
  background: #a5dad3bd;
  width: 100%;
  height: 60px;
  color: #ffffff;
  text-align: center;
  font: 800 20px "Noto Sans", sans-serif;
  letter-spacing: 1.2px;
  border: none;
  cursor: pointer;
}
.id-confirm-status {
  position: absolute;
  top: 95px;
  left: 7.7%;
}
.id-confirm-status img {
  width: 14px;
  height: 14px;
  vertical-align: middle;
}
.available {
  font: 600 14px "Roboto", sans-serif;
  color: #1c9181;
}
.not-available {
  font: 600 14px "Roboto", sans-serif;
  color: red;
}
</style>
