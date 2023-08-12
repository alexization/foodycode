<template>
  <div class="SignUp-Head">
    <div class="arrow-back">
      <button>
        <img :src="arrow_back" width="25" @click="click_back" />
      </button>
    </div>

    <div class="foody-logo">FOODY</div>
  </div>
</template>

<script>
import arrow_back from "@/assets/icon/arrow-back.png";
import line from "@/assets/icon/Line.png";

export default {
  components: {},
  props: ["now_page"],
  data() {
    return {
      line,
      arrow_back,
    };
  },
  methods: {
    click_back() {
      const url = window.location.href.split("/");
      const url_href = url[url.length - 1];
      if (url_href === "signup") {
        location.href = "#/login";
      } else if (this.now_page === true) {
        location.href = "#/signup";
      } else {
        this.$router.go(this.$router.currentRoute);
      }
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Dangrek&display=swap");
.SignUp-Head,
.SignUp-Head * {
  box-sizing: border-box;
}
.SignUp-Head {
  position: absolute;
  top: 0vh;
  display: inline-flex;
  justify-content: flex-start;
  width: 100vw;
  height: 8vh;
  background: #ffffff;
}

.foody-logo {
  position: absolute;
  width: 25vw;
  height: 4vh;
  left: 39.7vw;
  font-family: "Dangrek", cursive;
  font-size: 34px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
  color: #1c9181;
}

.arrow-back {
  position: absolute;
  top: 1.7vh;
  left: 1vw;
  width: 10vw;
  height: 4vh;
}
button {
  position: absolute;
  width: 10vw;
  height: 4vh;
  border: none;
  background: none;
}
</style>
