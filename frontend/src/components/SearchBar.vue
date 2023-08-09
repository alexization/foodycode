<template>
  <div class="search">
      <img :src="search_icon" width="25" />
      <input type="text" placeholder="식당 이름 검색하기" />
    </div>
</template>

<script>
import search_icon from "@/assets/icon/search_icon.png";

export default {
  data() {
    return {
      search_icon,
    };
  },

};
</script>

<style scoped>
.search {
  position: absolute;
  left: 39px;
  top: 85px;
  width: 260px;
}

input {
  width: 100%;
  border: 1.5px solid #1c9181;
  border-radius: 23px;
  padding-top: 10px;
  padding-right: 12px;
  padding-bottom: 10px;
  padding-left: 40px;
  font-size: 14px;
}

.search > img {
  position: absolute;
  top: 7px;
  left: 12px;
  margin: 0;
}
.search input[type="text"] {
  font: 400 13px "Noto Sans", sans-serif;
}
</style>
