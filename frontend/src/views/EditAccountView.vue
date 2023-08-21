<template>
  <div class="background">
    <MyFoodyHeader :title="title"></MyFoodyHeader>
    <hr class="line" />
    <EditUserName v-show="role == 0"></EditUserName>
    <EditPassword v-show="role == 1"></EditPassword>
    <EditAllergy v-show="role == 2"></EditAllergy>
  </div>
</template>

<script>
import arrow from "@/assets/icon/arrow.png";

import MyFoodyHeader from "../components/MyFoodyHeader.vue";
import EditUserName from '../components/EditUserName.vue';
import EditPassword from '../components/EditPassword.vue';
import EditAllergy from '../components/EditAllergy.vue';

export default {
  name: "EditAccountView",
  components: {
    MyFoodyHeader,
    EditUserName,
    EditPassword,
    EditAllergy,
  },
  props: {},
  data() {
    return {
      arrow,
      title: "",
      role: 0,
    };
  },
  created() {
    if (this.$route.params.edit_id_url_param == "user-name") {
      this.title = "Edit User Name";
      this.role = 0;
    } else if (this.$route.params.edit_id_url_param == "password") {
      this.title = "Change Password";
      this.role = 1;
    } else {
      this.title = "Edit My Allergy";
      this.role = 2;
    }
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.background * {
  box-sizing: border-box;
}

.background {
  width: 100%;
  height: 100%;
  background: #d9d9d9;
}

.line {
  position: absolute;
  box-sizing: border-box;
  top: 70px;
  width: 100%;
  border: solid 1px;
  color: #ccc;
}
</style>
