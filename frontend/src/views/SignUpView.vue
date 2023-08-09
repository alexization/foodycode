<template>
  <SignUpHead></SignUpHead>
  <StepCard></StepCard>
  <ServiceCard v-show="service"></ServiceCard>
  <RegisterInfo v-show="register"></RegisterInfo>
</template>

<script>
import SignUpHead from '../components/SignUpHeader.vue';
import StepCard from '../components/StepCard.vue';
import ServiceCard from '../components/ServiceCard.vue';
import RegisterInfo from '../components/RegisterInfo.vue';

export default {
  components: {
    SignUpHead,
    StepCard,
    ServiceCard,
    RegisterInfo,
  },
  props: {},
  data() {
    return {
      service: true,
      register: false,
    };
  },
  methods: {},
};
</script>

<style scoped></style>
