<template>
  <div class="signup">
    <SignUpHead></SignUpHead>
    <StepCard></StepCard>
    <RegisterInfo @register_value="get_data"></RegisterInfo>
  </div>
</template>

<script>
import SignUpHead from "../components/manager/SignUpManagerHeader.vue";
import StepCard from "../components/manager/StepCardManager.vue";
import RegisterInfo from "../components/manager/ManagerRegisterInfo.vue";

import axios from "axios";
import { useSSRContext } from "vue";

export default {
  components: {
    SignUpHead,
    StepCard,
    RegisterInfo,
  },
  props: {},
  data() {
    return {
      user_info: {},
    };
  },
  methods: {
    async get_data(data) {
      console.log(data);
      this.user_info = data;

      const user = this.user_info;

      let res = await axios({
        method: "POST",
        url: "api/restsignup",
        data: {
          uid: user.id,
          psword: user.pw,
          age: user.age,
          name: user.name,
          country: user.country,
          gender: user.gender,
          arr_algid: user.alg,
        },
      }).then((res) => {
        console.log(res.data);
        if (res.data.success) {
          alert("회원가입 완료! 로그인 페이지로 이동합니다.");
          location.href = "#/login";
        } else {
          alert(res.data);
        }
      });
    },

    },

    // this.user_info에 최종 유저 데이터가 들어옴 해당 위치에서 post 하면 될듯
    // async get_alg_data(data) {
    //   this.user_info.alg = data;
    //   console.log(this.user_info);

    //   const user = this.user_info;

    //   let res = await axios({
    //     method: "POST",
    //     url: "api/signup",
    //     data: {
    //       uid: user.id,
    //       psword: user.pw,
    //       age: user.age,
    //       name: user.name,
    //       country: user.country,
    //       gender: user.gender,
    //       arr_algid: user.alg,
    //     },
    //   }).then((res) => {
    //     console.log(res.data);
    //     if (res.data.success) {
    //       alert("회원가입 완료! 로그인 페이지로 이동합니다.");
    //       location.href = "#/login";
    //     } else {
    //       alert(res.data);
    //     }
    //   });
    // },
};
</script>

<style scoped>
.signup {
  background: white;
  width: 100%;
  height: 100vh;
  position: absolute;
}
</style>
