<template>
  <div class="background">
    <MyFoodyHeader :title="title"></MyFoodyHeader>
    <hr class="line" />
  </div>
</template>

<script>
import arrow from "@/assets/icon/arrow.png";

import MyFoodyHeader from "../components/MyFoodyHeader.vue";

export default {
  name: "EditAccountView",
  components: {
    MyFoodyHeader,
  },
  props: {},
  data() {
    return {
      arrow,
      title: "",
    };
  },
  created() {
    if (this.$route.params.edit_id_url_param == "user-name")
      this.title = "Edit User Name";
    else if (this.$route.params.edit_id_url_param == "password")
      this.title = "Change Password";
    else this.title = "Edit My Allergy";
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
