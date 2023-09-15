<template>
  <div class="wrapper">
    <form v-on:submit.prevent>
      <div class="user-name-box">
        <div class="instruction">Please enter your new username</div>
        <input
          type="text"
          id="name"
          class="input-user-name"
          :placeholder="userName"
          @blur="onChange"
        />
        <div class="user-instruction">
          {{ username_instruction[info_number] }}
        </div>
      </div>
      <hr class="line" />
      <div class="button-box">
        <button id="btn" class="edit-btn" @click.self.prevent="edit_username" disabled="true">
          Edit
        </button>
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  components: {},
  props: {},
  data() {
    return {
      userName: "",
      username_instruction: [
        "This field is required.",
        "This is your current username.",
        "Please enter your username in 2~15 characters.",
        "Username is available",
      ],
      info_number: 0, // username_instruction 배열 index
      showInstruction: false, // 처음에는 username_instruction이 안보이도록 설정
      input_data: {}, // input 태그 value data
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
  methods: {
    isUsernameCorrect(res_data) {
      if (res_data.username === "") {
        return { success: false, case: 0, info: this.username_instruction[0] };
      } else if (res_data.username === this.userName) {
        return { success: false, case: 1, info: this.username_instruction[1] };
      } else if (res_data.username.length <= 1 || res_data.username.length > 15) {
        return { success: false, case: 2, info: this.username_instruction[2] };
      } else {
        return { success: true, case: 3, info: this.username_instruction[3] };
      }
    },
    async onChange() {
      this.input_data.username = document.getElementById("name").value;
      const result = this.isUsernameCorrect(this.input_data);

      if (result.success) {
        this.cssStyle(result.success);
        this.info_number = 3;
      } else {
        this.cssStyle(result.success);
        if (result.case === 0) {
          this.info_number = 0;
        } else if (result.case === 1) {
          this.info_number = 1;
        } else if (result.case === 2) {
          this.info_number = 2;
        }
      }
    },
    cssStyle(res) {
      var button = document.querySelector(".edit-btn");
      var buttonElement = document.getElementById("btn");
      var user_instruction = document.querySelector(".user-instruction");

      if (res) {
        button.style.background = "#1c9181";
        button.style.cursor = "pointer";
        button.style.border = "1px solid #1c9181";
        buttonElement.disabled = false;
        user_instruction.style.color = "#00ae00";
        user_instruction.style.display = "flex";
      } else {
        button.style.background = "#cccccc";
        button.style.cursor = "disabled";
        button.style.border = "1px solid #cccccc";
        buttonElement.disabled = true;
        user_instruction.style.color = "#ff2b2b";
        user_instruction.style.display = "flex";
      }
    },
    async edit_username() {
      this.input_data.username = document.getElementById("name").value;
      if (this.isUsernameCorrect(this.input_data).success) {
        console.log(this.input_data);
        this.$router.push({ path: "/" });
      } else {
        alert("error");
      }
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
  height: 120px;
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

.edit-btn {
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
  cursor: disabled;
}

.user-instruction {
  position: relative;
  display: none;
  align-items: center;
  width: 100%;
  height: 30px;
  margin-left: 35px;
  font: 600 13px "Noto Sans", sans-serif;
  color: #ff2b2b;
}
</style>
