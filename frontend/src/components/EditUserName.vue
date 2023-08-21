<template>
  <div class="wrapper">
    <div class="user-name-box">
      <div class="instruction">Please enter your new username</div>
      <input
        type="text"
        id="name"
        class="input-user-name"
        :placeholder="userName"
      />
    </div>
    <hr class="line" />
    <div class="button-box">
      <button>Edit</button>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "MyFoodyView",
  components: {},
  props: {},
  data() {
    return {
      userName: "",
    };
  },
  async created() {
    axios
      .get("/api/useralg")
      .then((response) => {        
        this.userName = response.data.uname;
      })
      .catch((error) => {});
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap");

.wrapper * {
  box-sizing: border-box;
}

.wrapper {
  position: absolute;
  top: 80px;
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 80px);
  background: #ffffff;
}

.user-name-box {
  position: absolute;
  top: 0px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  width: 100%;
  height: 100px;
  background: #ffffff;
}

.instruction {
  position: relative;
  display: flex;
  align-items: center;
  width: 100%;
  height: 50px;
  margin-left: 35px;
  font: 600 16px "Noto Sans", sans-serif;
  color: #000000;
}

.input-user-name {
  position: relative;
  border: 1px solid #eeeeee;
  border-radius: 15px;
  width: 90%;
  height: 40px;
  margin: 0px auto;
  padding: 0px 20px;
  background: #eeeeee;
  font: 600 15px "Noto Sans", sans-serif;
  color: #525252;
}

.line {
  position: absolute;
  bottom: 70px;
  width: 100%;
  border: solid 1px;
  color: #ccc;
}

.button-box {
  position: absolute;
  bottom: 0px;
  display: flex;
  justify-content: center;
  bottom: 0px;
  width: 100%;
  height: 70px;
  background: #ffffff;
}

button {
  display: flex;
  align-items: center;
  justify-content: center;
  border: 1px solid #cccccc;
  width: 90%;
  height: 40px;
  margin: auto;
  background: #cccccc;
  font: 600 16px "Noto Sans", sans-serif;
  color: #ffffff;
}
</style>
