<template>
  <div class="login-view">
    <button class="button-back" @click="click_back">
      <img src="@/assets/icon/arrow-back.png" width="25" />
    </button>
    <div class="logo">
      <img class="logo-img" :src="LogoImg" />
    </div>
    <div class="login-text">LOGIN</div>

    <input
      class="input-id"
      id="uid"
      type="text"
      name="uid"
      placeholder="User Name"
      maxlength="16"
    />

    <input
      class="input-pw"
      type="password"
      id="pw"
      name="password"
      placeholder="Password"
      maxlength="32"
    />
    <button type="button" class="login-button" @click="onLogin">LOGIN</button>

    <div class="login-row-group">
      <div class="find-my-id" @click="find_id">Find my ID</div>
      <div class="find-my-pw" @click="find_pw">Find my PW</div>
      <RouterLink class="sign-up" to="/signup">Sign Up</RouterLink>
    </div>

    <svg
      class="password-img"
      width="15"
      height="17"
      viewBox="0 0 15 17"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M7.5 8.18518C6.97469 8.18536 6.46698 8.37597 6.06967 8.72218C5.67237 9.06839 5.412 9.54706 5.33616 10.0707C5.26031 10.5944 5.37406 11.1281 5.65661 11.5742C5.93916 12.0203 6.37164 12.3491 6.875 12.5005V13.8519C6.875 14.0188 6.94085 14.179 7.05806 14.2971C7.17527 14.4151 7.33424 14.4815 7.5 14.4815C7.66576 14.4815 7.82473 14.4151 7.94194 14.2971C8.05915 14.179 8.125 14.0188 8.125 13.8519V12.5005C8.62836 12.3491 9.06084 12.0203 9.34339 11.5742C9.62594 11.1281 9.73969 10.5944 9.66384 10.0707C9.588 9.54706 9.32763 9.06839 8.93033 8.72218C8.53302 8.37597 8.02531 8.18536 7.5 8.18518ZM7.5 11.3333C7.31458 11.3333 7.13332 11.2779 6.97915 11.1742C6.82498 11.0704 6.70482 10.9229 6.63386 10.7503C6.56291 10.5777 6.54434 10.3878 6.58051 10.2046C6.61669 10.0214 6.70598 9.85315 6.83709 9.72107C6.9682 9.58898 7.13525 9.49903 7.3171 9.46259C7.49896 9.42615 7.68746 9.44485 7.85877 9.51634C8.03007 9.58782 8.17649 9.70887 8.2795 9.86418C8.38252 10.0195 8.4375 10.2021 8.4375 10.3889C8.4375 10.6394 8.33873 10.8796 8.16291 11.0567C7.9871 11.2338 7.74864 11.3333 7.5 11.3333ZM13.75 5.66667H11.25V3.77778C11.25 2.77585 10.8549 1.81496 10.1517 1.10649C9.44839 0.398015 8.49456 0 7.5 0C6.50544 0 5.55161 0.398015 4.84835 1.10649C4.14509 1.81496 3.75 2.77585 3.75 3.77778V5.66667H1.25C0.918479 5.66667 0.600537 5.79934 0.366116 6.0355C0.131696 6.27165 0 6.59195 0 6.92593V15.7407C0 16.0747 0.131696 16.395 0.366116 16.6312C0.600537 16.8673 0.918479 17 1.25 17H13.75C14.0815 17 14.3995 16.8673 14.6339 16.6312C14.8683 16.395 15 16.0747 15 15.7407V6.92593C15 6.59195 14.8683 6.27165 14.6339 6.0355C14.3995 5.79934 14.0815 5.66667 13.75 5.66667ZM5 3.77778C5 3.10983 5.26339 2.46923 5.73223 1.99692C6.20107 1.5246 6.83696 1.25926 7.5 1.25926C8.16304 1.25926 8.79893 1.5246 9.26777 1.99692C9.73661 2.46923 10 3.10983 10 3.77778V5.66667H5V3.77778ZM13.75 15.7407H1.25V6.92593H13.75V15.7407Z"
        fill="#146330"
      />
    </svg>

    <svg
      class="user-img"
      width="15"
      height="15"
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M14.915 14.0873C13.8177 12.1146 12.1268 10.7001 10.1534 10.0295C11.1295 9.42526 11.8879 8.50449 12.3121 7.40862C12.7363 6.31276 12.8028 5.10239 12.5015 3.9634C12.2001 2.82441 11.5476 1.81978 10.6441 1.10378C9.74053 0.387776 8.63597 0 7.5 0C6.36403 0 5.25947 0.387776 4.35594 1.10378C3.45241 1.81978 2.79987 2.82441 2.49853 3.9634C2.1972 5.10239 2.26373 6.31276 2.6879 7.40862C3.11208 8.50449 3.87045 9.42526 4.84655 10.0295C2.87321 10.6993 1.1823 12.1138 0.0850403 14.0873C0.0448019 14.1555 0.0181121 14.2314 0.0065455 14.3106C-0.00502106 14.3897 -0.00123002 14.4704 0.0176949 14.548C0.0366199 14.6256 0.0702954 14.6984 0.116735 14.7623C0.163174 14.8261 0.221436 14.8796 0.288083 14.9196C0.354731 14.9597 0.428414 14.9854 0.504785 14.9954C0.581156 15.0053 0.658668 14.9992 0.732748 14.9775C0.806828 14.9558 0.875975 14.9189 0.936109 14.8689C0.996243 14.819 1.04615 14.757 1.08288 14.6866C2.44022 12.2472 4.83935 10.7907 7.5 10.7907C10.1607 10.7907 12.5598 12.2472 13.9171 14.6866C13.9539 14.757 14.0038 14.819 14.0639 14.8689C14.124 14.9189 14.1932 14.9558 14.2673 14.9775C14.3413 14.9992 14.4188 15.0053 14.4952 14.9954C14.5716 14.9854 14.6453 14.9597 14.7119 14.9196C14.7786 14.8796 14.8368 14.8261 14.8833 14.7623C14.9297 14.6984 14.9634 14.6256 14.9823 14.548C15.0012 14.4704 15.005 14.3897 14.9935 14.3106C14.9819 14.2314 14.9552 14.1555 14.915 14.0873ZM3.46543 5.39639C3.46543 4.56657 3.70205 3.7554 4.14538 3.06543C4.5887 2.37547 5.21882 1.83771 5.95604 1.52015C6.69326 1.2026 7.50448 1.11951 8.28711 1.2814C9.06973 1.44329 9.78862 1.84288 10.3529 2.42965C10.9171 3.01641 11.3014 3.764 11.457 4.57786C11.6127 5.39173 11.5328 6.23533 11.2275 7.00197C10.9221 7.76862 10.405 8.42388 9.74149 8.8849C9.078 9.34592 8.29796 9.59199 7.5 9.59199C6.43032 9.5908 5.40477 9.14838 4.64839 8.36181C3.89201 7.57524 3.46658 6.50876 3.46543 5.39639Z"
        fill="#146330"
      />
    </svg>
    <!--
    <RouterLink class="click-here-if-you-are-manager" to="/mlogin">
      Click Here If You Are Manager
    </RouterLink> 
    -->
  </div>
</template>
<script>
/* Code generated with AutoHTML Plugin for Figma */
import Logo from "@/assets/login/Logo.png";
import axios from "axios";
import { RouterLink } from "vue-router";

export default {
  name: "LogInPage",
  components: {
    RouterLink,
  },
  props: {},
  data() {
    // quickfix to have components available to pass as props
    return {
      LogoImg: Logo,
    };
  },
  methods: {
    find_id() {
      alert("Comming Soon..");
    },
    find_pw() {
      alert("Comming Soon..");
    },

    click_back() {
      location.href = "#/";
    },
    onLogin: async function () {
      const uid = document.getElementById("uid");
      console.log(uid.value);
      const password = document.getElementById("pw");

      let res = await axios({
        method: "POST",
        url: "api/login",
        data: {
          uid: uid.value,
          password: password.value,
        },
      }).then((res) => {
        console.log(res.data);

        if (res.data.success) {
          location.href = "#/";
        } else {
          alert(res.data.msg);
        }
      });
    },
  },
};
</script>
<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap");
.login-view * {
  box-sizing: border-box;
}
.login-view {
  background: #ffffff;
  width: 100%;
  height: 100dvh;
  position: absolute;
  overflow: scroll;
}
.login-text {
  color: #143b22;
  text-align: center;
  font: 700 20px "Roboto", sans-serif;
  position: absolute;
  width: 100%;
  top: 350px;
}
.button-back {
  position: absolute;
  top: 16px;
  left: 19px;
  width: 40px;
  height: 40px;
  border: none;
  background: none;
}
.input-id {
  border-radius: 22px;
  border-style: solid;
  border-color: #fbdc71;
  border-width: 1.5px;
  width: 79.5%;
  height: 45px;
  position: absolute;
  top: 400px;
  left: 10.3%;
  font-size: 15px;
  padding-left: 15.4%;
  outline: none;
}
.input-pw {
  border-radius: 22px;
  border-style: solid;
  border-color: #fbdc71;
  border-width: 1.5px;
  width: 79.5%;
  height: 45px;
  position: absolute;
  top: 461px;
  left: 10.3%;
  font-size: 15px;
  padding-left: 15.4%;
  outline: none;
}

/* Chrome, Firefox, Opera, Safari 10.1+ */
input:focus::placeholder {
  color: transparent;
}

/* Edge */
input:focus::-ms-input-placeholder {
  color: transparent;
}
.login-row-group {
  top: 590px;
  position: absolute;
  display: flex;
  width: 100%;
  justify-content: space-evenly;
  align-items: center;
}
.find-my-id {
  color: #143b22;
  text-align: left;
  font: 400 14px "Noto Sans", sans-serif;
  text-decoration: underline;
  cursor: pointer;
}
.find-my-pw {
  color: #143b22;
  font: 400 14px "Noto Sans", sans-serif;
  text-decoration: underline;
  cursor: pointer;
}
.sign-up {
  color: #143b22;
  font: 400 14px "Noto Sans", sans-serif;
  text-decoration: underline;
}

/*
.click-here-if-you-are-manager {
  color: #143b22;
  font: 400 14px "Noto Sans", sans-serif;
  text-decoration: underline;
  position: absolute;
  left: 42%;
  top: 645px;
  cursor: pointer;
}
*/
.password-img {
  position: absolute;
  left: 16%;
  top: 475px;
}
.user-img {
  position: absolute;
  left: 16%;
  top: 416px;
}

.login-button {
  position: absolute;
  left: 10%;
  top: 530px;
  overflow: visible;
  background: #1c9181;
  border-radius: 22px;
  width: 79%;
  height: 45px;
  font-size: 15px;
  color: white;
  position: relative;
  border: none;
  cursor: pointer;
}

.logo {
  width: 100%;
  display: flex;
  justify-content: center;
}
.logo-img {
  border-radius: 20px;
  width: 150px;
  height: 150px;
  position: absolute;
  top: 100px;
}
</style>
