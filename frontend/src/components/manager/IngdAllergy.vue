<template>
  <div class="IngdCard">
    <div class="ingd-name">
      <span v-text="IngdName"></span>
    </div>
    <button @click="ingd_add">선택</button>
  </div>
</template>

<script>
export default {
  props: {
    IngdName: {
      type: String,
      default: "Default Menu Name",
    },
    IngdInfo: {
      type: Object,
    },
  },
  methods: {
    ingd_add() {
      this.$emit("add_ingd", this.IngdInfo);
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap");

.IngdCard {
  width: 90%;
  height: 50px;
  align-items: center;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border-top-right-radius: 15px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 15px;
  border-bottom-right-radius: 2px;
  box-shadow: rgba(0, 0, 0, 0.15) 5px 5px 5px 3px;
  border: 1px solid;
  border-color: #1c9181;
  margin: auto;
  margin-bottom: 8px;
  margin-top: 5px;
}
.IngdCard span {
  margin-left: 10px;
  font: 400 14px "Noto Sans KR", sans-serif;
}
.IngdCard button {
  width: 20%;
  height: 30px;
  border-radius: 15px;
  background: #1c9181;
  border: none;
  color: white;
  margin-right: 5px;
  letter-spacing: 1px;
}
</style>
