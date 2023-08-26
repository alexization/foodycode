<template>
  <div class="signup">
    <SignUpHead v-bind:now_page="register"></SignUpHead>
    <StepCard v-bind:now_page="register"></StepCard>
    <RegisterInfo
      v-show="register"
      @change_page="allergy_page"
      @register_value="get_data"
    ></RegisterInfo>
    <Allergy v-show="allergy" @alg_data="get_alg_data"></Allergy>
  </div>
</template>

<script>
import SignUpHead from '../components/SignUpHeader.vue';
import StepCard from '../components/StepCard.vue';
import RegisterInfo from '../components/RegisterInfo.vue';
import Allergy from '../components/Allergy.vue';

import axios from 'axios';
import { useSSRContext } from 'vue';

export default {
  components: {
    SignUpHead,
    StepCard,
    RegisterInfo,
    Allergy,
  },
  props: {},
  data() {
    return {
      register: true,
      allergy: false,
      user_info: {},
    };
  },
  methods: {
    allergy_page() {
      this.register = !this.register;
      this.allergy = !this.allergy;
    },
    get_data(data) {
      console.log(data);
      this.user_info = data;
    },

    // this.user_info에 최종 유저 데이터가 들어옴 해당 위치에서 post 하면 될듯
    async get_alg_data(data) {
      this.user_info.alg = data;
      console.log(this.user_info);

      const user = this.user_info;

      let res = await axios({
        method: 'POST',
        url: 'api/signup',
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
          alert('회원가입 완료! 로그인 페이지로 이동합니다.');
          location.href = '#/login';
        } else {
          alert(res.data);
        }
      });
    },
  },
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
