<template>
    <div class="Header">
        <div class="background-box">
            <div class="foody-logo">
                <span>
                    <span class="food-logo">FOOD</span>
                    <span class="y-logo">Y</span>
                </span>
            </div>

            <svg
            class="navigation-bar"
            width="24"
            height="15"
            viewBox="0 0 24 15"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            @click="toggleMenu"
            >
                <line
                    x1="1"
                    y1="6.5"
                    x2="23"
                    y2="6.5"
                    stroke="black"
                    stroke-width="2"
                    stroke-linecap="round"
                />
                <line
                    x1="1"
                    y1="14"
                    x2="23"
                    y2="14"
                    stroke="black"
                    stroke-width="2"
                    stroke-linecap="round"
                />
            </svg>

            <div class="qr">
                <div class="qr-rectangle"></div>

                <div class="qr-circle"></div>
            </div>

            <div>
                <input class="search-bar" type="text" placeholder="    식당 이름 검색하기">                
            </div>
        </div>
    </div>
</template>

<script>
import Vector from '@/assets/Vector.png';
export default {
    data() {
        return {
            Vector
        };
    }

}
</script>

<style scoped>
.Header {
  height: 194px;
  position: sticky;
  right: 0px;
  left: 0px;
  top: 0px;
}
.background-box {
  background: #ffffff;
  width: 390px;
  height: 194px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.foody-logo {
  text-align: left;
  font: 400 30px "Jua", sans-serif;
  position: absolute;
  left: 145px;
  top: 61px;
  width: 100px;
  height: 33px;
}
.food-logo {
  color: #2afb73;
  font: 400 30px "Jua", sans-serif;
}
.y-logo {
  color: #0ba23c;
  font: 400 30px "Jua", sans-serif;
}
.navigation-bar {
  position: absolute;
  left: 40px;
  top: 70px;
  overflow: visible;
}
.qr {
  position: absolute;
  inset: 0;
}
.qr-rectangle {
  border-style: solid;
  border-color: #000000;
  border-width: 2px;
  width: 34px;
  height: 34px;
  position: absolute;
  left: 316px;
  top: 60px;
}
.qr-circle {
  background: #000000;
  border-radius: 50%;
  width: 14px;
  height: 14px;
  position: absolute;
  left: 326px;
  top: 70px;
}
.search-bar {
  border-radius: 23px;
  border-style: solid;
  border-color: #2afb73;
  border-width: 1px;
  width: 304px;
  height: 35px;
  position: absolute;
  left: 39px;
  top: 144px;
}
</style>