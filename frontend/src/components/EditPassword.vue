<template>
  <div class="wrapper">
    <div class="user-name-box">
      <div class="instruction">Current Password</div>
      <input
        type="password"
        id="cur_pwd"
        class="input-password"
        placeholder="current password"
      />
      <div class="cur-pwd-instruction">{{ cur_pwd_instruction[1] }}</div>
      <div class="instruction">New Password</div>
      <input
        type="password"
        id="new_pwd"
        class="input-password"
        placeholder="new password"
      />
      <div class="new-pwd-instruction">{{ new_pwd_instruction[0] }}</div>
    </div>

    <hr class="line" />
    <div class="button-box">
      <button>Change</button>
    </div>
  </div>
</template>

<script>
export default {
  components: {},
  props: {},
  data() {
    return {
      cur_pwd_instruction: [
        "This field is required.",
        "Current password is not correct.",
        "Correct password.",
      ],
      new_pwd_instruction: ["This field is required."],
      res_data: {},
    };
  },
  methods: {
    isPwdCorrect() {

    },
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
  overflow: hidden;
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
  height: 240px;
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

.input-password {
  position: relative;
  border: 1px solid #eeeeee;
  border-radius: 10px;
  width: 90%;
  height: 40px;
  margin: 0px auto;
  padding: 0px 20px;
  background: #eeeeee;
  font: 600 15px "Noto Sans", sans-serif;
  color: #525252;
  outline: none;
}

/* Chrome, Firefox, Opera, Safari 10.1+ */
input:focus::placeholder {
  color: transparent;
}

/* Edge */
input:focus::-ms-input-placeholder {
  color: transparent;
}

.cur-pwd-instruction {
  position: relative;
  display: flex;
  align-items: center;
  width: 100%;
  height: 30px;
  margin-left: 35px;
  font: 600 13px "Noto Sans", sans-serif;
  color: #ff2b2b;
}

.new-pwd-instruction {
  position: relative;
  display: flex;
  align-items: center;
  width: 100%;
  height: 30px;
  margin-left: 35px;
  font: 600 13px "Noto Sans", sans-serif;
  color: #ff2b2b;
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
  border-radius: 5px;
  width: 95%;
  height: 50px;
  margin: auto;
  background: #cccccc;
  font: 600 16px "Noto Sans", sans-serif;
  color: #ffffff;
}
</style>
