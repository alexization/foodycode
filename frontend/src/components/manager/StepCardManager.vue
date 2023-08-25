<template>
  <div class="Step">
    <div class="step-1" ref="step1">Step 1</div>
    <div class="line"></div>
    <div class="step-2" ref="step2">Step 2</div>
  </div>
</template>

<script>
import line from "@/assets/icon/Line.png";

export default {
  components: {},
  data() {
    return {
      line,
      now_page: false,
    };
  },
  methods: {},
  mounted() {
    const url = window.location.href.split("/");
    const url_href = url[url.length - 1];
    if (url_href != "manager-signup") {
      this.now_page = true;
    }

    if (this.now_page === true) {
      const step_1 = this.$refs.step1.style;
      const step_2 = this.$refs.step2.style;
      step_1.background = "white";
      step_1.color = "black";
      step_2.background = "#1c9181";
      step_2.color = "white";
    }
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500;600;700;800&display=swap");
.Step,
.Step * {
  box-sizing: border-box;
}
.Step {
  background: #ffffff;
  width: 100%;
  height: 60px;
  top: 70px;
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
}

.step-1 {
  background: #1c9181;
  border-color: #1c9181;
  border-style: solid;
  border-radius: 24px;
  border-width: 2px;
  width: 20%;
  height: 35px;
  color: #ffffff;
  display: flex;
  justify-content: center;
  align-items: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.step-2 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 20%;
  height: 35px;
  color: #000000;
  display: flex;
  justify-content: center;
  align-items: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.line {
  width: 8.5%;
  height: 2px;
  background: #1c9181;
}
</style>
