<template>
  <div class="Step">
    <div class="step-1" ref="step1">Step 1</div>
    <div class="step-2" ref="step2">Step 2</div>
    <div class="step-3" ref="step3">Step 3</div>

    <div class="line-left"></div>

    <div class="line-right"></div>
  </div>
</template>

<script>
import line from "@/assets/icon/Line.png";

export default {
  components: {},
  props: ["now_page"],
  data() {
    return {
      line,
    };
  },
  methods: {},
  mounted() {
    const step_1 = this.$refs.step1.style;
    const step_2 = this.$refs.step2.style;

    if (this.now_page === true) {
      step_1.background = "white";
      step_1.color = "black";
      step_2.background = "#1c9181";
      step_2.color = "white";
    }
  },
  updated() {
    const step_2 = this.$refs.step2.style;
    const step_3 = this.$refs.step3.style;

    if (this.now_page === false) {
      step_2.background = "white";
      step_2.color = "black";
      step_3.background = "#1c9181";
      step_3.color = "white";
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
}

.step-1 {
  background: #1c9181;
  border-color: #1c9181;
  border-style: solid;
  border-radius: 24px;
  border-width: 2px;
  width: 20%;
  height: 35px;
  position: absolute;
  left: 11.5%;
  top: 20px;
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
  position: absolute;
  top: 20px;
  left: 39.7%;
  color: #000000;
  display: flex;
  justify-content: center;
  align-items: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.step-3 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 20%;
  height: 35px;
  position: absolute;
  top: 20px;
  left: 67.9%;
  color: #000000;
  display: flex;
  justify-content: center;
  align-items: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.line-left {
  position: absolute;
  left: 31.4%;
  top: 35px;
  width: 8.5%;
  height: 2px;
  background: #1c9181;
}
.line-right {
  position: absolute;
  left: 59.5%;
  top: 35px;
  width: 8.5%;
  height: 2px;
  background: #1c9181;
}
</style>
