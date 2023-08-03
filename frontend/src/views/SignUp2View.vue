<template>
  <div class="sign-up-page-register">
    <button class="arrow-back">
      <img :src="arrow_back" width="25" @click="click_back" />
    </button>

    <div class="group-121">
      <div class="step-1">Step 1</div>
    </div>

    <div class="group-122">
      <div class="step-2">Step 2</div>
    </div>

    <div class="group-123">
      <div class="step-3">Step 3</div>
    </div>

    <div class="line-left">
      <img :src="line" />
    </div>

    <div class="line-right">
      <img :src="line" />
    </div>

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

    <button class="Register" @click="click_register">Register Info</button>

    <div class="foody-logo">FOODY</div>
  </div>
</template>

<script>
import arrow_back from '@/assets/icon/arrow-back.png';
import line from '@/assets/icon/Line.png';


import axios from 'axios';
export default {
  data() {
    return {
      arrow_back,
      line,
    };
  },
  methods: {
    click_back() {
      location.href = '#/login';
    },
    click_confirm() {
      alert('Click Confirm');
    },
    click_male() {
      document.getElementById('male').style.backgroundColor = '#1c9181';
      document.getElementById('female').style.backgroundColor = 'white';
    },
    click_female() {
      document.getElementById('female').style.backgroundColor = '#1c9181';
      document.getElementById('male').style.backgroundColor = 'white';
    },
    async click_register() {
   
      const uid = document.getElementById('uid');
      console.log(uid.value);
      const password = document.getElementById('pw');
      console.log(pw.value);
      let res = await axios({
        method: 'POST',
        url: 'api/signup',
        data: {
          uid: uid.value,
          password: password.value,
        },
      }).then((res) => {

        console.log(res.data);

        if(res.data.success){
          
          alert("회원가입 완료! 로그인 페이지로 이동합니다.");
          location.href="#/login";
        }
        else{
          alert(res.data);
        }

      });
    },
  },
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Dangrek&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap');

.sign-up-page-register,
.sign-up-page-register * {
  box-sizing: border-box;
}
.sign-up-page-register {
  background: #ffffff;
  width: 390px;
  height: 844px;
  position: sticky;
  overflow: hidden;
}
.arrow-back {
  position: absolute;
  left: 30px;
  top: 64px;
  width: 25px;
  height: 25px;
  overflow: visible;
  border: none;
  background-color: white;
}
.group-121 {
  position: sticky;
  inset: 0;
}
.step-1 {
  background: #1c9181;
  border-radius: 24px;
  width: 80px;
  height: 35px;
  position: absolute;
  left: 45px;
  top: 139px;
  color: #ffffff;
  text-align: center;
  font: 600 15px 'Noto Sans', sans-serif;
  padding-top: 5px;
}

.group-122 {
  position: sticky;
  inset: 0;
}
.step-2 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 80px;
  height: 35px;
  position: absolute;
  left: 155px;
  top: 139px;
  color: #000000;
  text-align: center;
  font: 600 15px 'Noto Sans', sans-serif;
  padding-top: 5px;
}

.group-123 {
  position: sticky;
  inset: 0;
}
.step-3 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 80px;
  height: 35px;
  position: absolute;
  left: 265px;
  top: 139px;
  color: #000000;
  text-align: center;
  font: 600 15px 'Noto Sans', sans-serif;
  padding-top: 5px;
}

.line-left {
  position: absolute;
  left: 125px;
  top: 142px;
  overflow: visible;
}
.line-right {
  position: absolute;
  left: 235px;
  top: 142px;
  overflow: visible;
}
.uid {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30px;
  top: 219px;
}

input[type='text'] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 257px;
  height: 30px;
}
input[type][id='user_name'] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 330px;
  height: 30px;
}
input[type][id='country'] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 205px;
  height: 30px;
}

input[type='password'] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 330px;
  height: 30px;
}
input[type='number'] {
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 85px;
  height: 30px;
}
.uid-input {
  position: absolute;
  left: 30px;
  top: 252px;
}
.confirm {
  background: #ffffff;
  border-style: solid;
  border-color: #000000;
  border-width: 1px;
  width: 75px;
  height: 30px;
  position: absolute;
  left: 285px;
  top: 252px;
  text-align: center;
  font: 600 14px 'Noto Sans', sans-serif;
  color: black;
}

.password {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30px;
  top: 322px;
}
.password-input {
  position: absolute;
  left: 30px;
  top: 355px;
}
.password-confrim {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30px;
  top: 400px;
}
.confirm-input {
  position: absolute;
  left: 30px;
  top: 433px;
}
.user-name {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30px;
  top: 503px;
}
.name-input {
  position: absolute;
  left: 30px;
  top: 536px;
}
.gender {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30px;
  top: 659px;
}
.Female {
  color: black;
  background-color: white;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 165px;
  height: 30px;
  position: absolute;
  left: 195px;
  top: 692px;
  text-align: center;
  font: 400 14px 'Noto Sans', sans-serif;
}
.Male {
  color: black;
  background-color: white;
  border-style: solid;
  border-color: #1c9181;
  border-width: 1px;
  width: 165px;
  height: 30px;
  position: absolute;
  left: 30px;
  top: 692px;
  text-align: center;
  font: 400 14px 'Noto Sans', sans-serif;
}
.Age {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 30px;
  top: 581px;
}
.Country {
  color: #000000;
  text-align: left;
  font: 400 17px 'Noto Sans', sans-serif;
  position: absolute;
  left: 150px;
  top: 581px;
}
.age-country {
  position: sticky;
  inset: 0;
}
.age-input {
  position: absolute;
  left: 30px;
  top: 614px;
}

.country-input {
  position: absolute;
  left: 150px;
  top: 614px;
}

.Register {
  background: #1c9181;
  width: 390px;
  height: 60px;
  position: absolute;
  left: 0px;
  top: 784px;
  color: #ffffff;
  text-align: center;
  font: 400 20px 'Noto Sans', sans-serif;
  border: none;
}
.foody-logo {
  color: #1c9181;
  text-align: left;
  font-family: 'Dangrek', cursive;
  font-size: 34px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
  position: absolute;
  left: 145px;
  top: 49px;
  width: 102px;
  height: 33px;
}
</style>
