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
/* search 컴포넌트 사용 조건: box의 높이가 40 이상 */
.search * {
  box-sizing: border-box;
}

.search {
  position: absolute;  
  top: 50%;
  left: 50%;
  margin-top: -20px;
  margin-left: -45%;
  width: 90%;
}

input {  
  border: 1.5px solid #1c9181;  
  border-radius: 23px;
  width: 100%;
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
