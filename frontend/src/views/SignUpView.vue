<template>
  <div class="signup">
    <SignUpHead v-bind:now_page="register"></SignUpHead>
    <StepCard v-bind:now_page="register"></StepCard>
    <RegisterInfo v-show="register" @change_page="allergy_page"></RegisterInfo>
    <Allergy v-show="allergy"></Allergy>
  </div>
</template>

<script>
import SignUpHead from "../components/SignUpHeader.vue";
import StepCard from "../components/StepCard.vue";
import RegisterInfo from "../components/RegisterInfo.vue";
import Allergy from "../components/Allergy.vue";

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
      a: "",
      b: {},
    };
  },
  methods: {
    allergy_page() {
      this.register = !this.register;
      this.allergy = !this.allergy;
    },
  },
};
</script>

<style scoped>
.signup {
  background: white;
  width: 100%;
  height: 100vh;
  position: relative;
}
</style>
