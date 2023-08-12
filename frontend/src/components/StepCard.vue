<template>
  <div class="Step">
    <div class="step-1" ref="step1">Step 1</div>
    <div class="step-2" ref="step2">Step 2</div>
    <div class="step-3" ref="step3">Step 3</div>

    <div class="line-left">
      <img :src="line" />
    </div>

    <div class="line-right">
      <img :src="line" />
    </div>
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
  width: 100vw;
  height: 8vh;
  top: 8vh;
  position: absolute;
  overflow: hidden;
}

.step-1 {
  background: #1c9181;
  border-color: #1c9181;
  border-style: solid;
  border-radius: 24px;
  border-width: 2px;
  width: 20vw;
  height: 4vh;
  position: absolute;
  left: 11.5vw;
  top: 3vh;
  color: #ffffff;
  text-align: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.step-2 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 20vw;
  height: 4vh;
  position: absolute;
  top: 3vh;
  left: 39.7vw;
  color: #000000;
  text-align: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.step-3 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 20vw;
  height: 4vh;
  position: absolute;
  top: 3vh;
  left: 67.9vw;
  color: #000000;
  text-align: center;
  font: 600 15px "Noto Sans", sans-serif;
}

.line-left {
  position: absolute;
  left: 31.4vw;
  top: 3.6vh;
  overflow: visible;
}
.line-left img {
  width: 8.5vw;
}
.line-right {
  position: absolute;
  left: 59.5vw;
  top: 3.6vh;
  overflow: visible;
}
.line-right img {
  width: 8.5vw;
}
</style>
