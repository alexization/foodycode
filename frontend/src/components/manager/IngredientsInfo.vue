<template>
  <div class="flex">
    <div class="Ingd-tag">
      {{ IngdArray[0] }}
      <div class="cancel-button">
        <button>
          <img src="@/assets/icon/red_cancel.png" />
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  props: {
    IngdArray: {
      type: Array,
    },
  },
  methods: {
    delete_ingd() {
      this.$emit("delete_ingd", this.IngdArray);
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500&display=swap");
.flex {
  display: flex;
  flex-direction: row;
}
.Ingd-tag {
  position: relative;
  height: 35px;
  padding: 4px 10px 0px;
  border: none;
  border-radius: 15px;
  margin: 0px 5px;
  background: rgba(28, 145, 129, 0.1);
  color: rgba(28, 145, 129, 1);
  letter-spacing: 1.2px;
  font: 400 16px "Noto Sans", sans-serif;
  text-align: center;
}
.cancel-button {
  position: absolute;
  top: -8px;
  right: -7px;
}
.cancel-button button {
  width: 20px;
  height: 20px;
  border: none;
  background: none;
}
.cancel-button img {
  width: 100%;
  height: 100%;
}
.Ingd-box::-webkit-scrollbar {
  display: none;
}
</style>
