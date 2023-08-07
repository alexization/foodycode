<template>
  <div class="selecting-page">
    <div class="button-frame">
      <div class="frame-button">
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="abalone" />
            <span>Abalone</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="chicken" />
            <span>Chicken</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="mackerel" />
            <span>Mackerel</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="oyster" />
            <span>Oyster</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="pork" />
            <span>Pork</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="soy" />
            <span>Soy</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="walnut" />
            <span>Walnut</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="none" />
            <span>None</span>
          </label>
        </div>
      </div>
    </div>
    <div class="button-frame-second">
      <div class="frame-button">
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="beef" />
            <span>Beef</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="crab" />
            <span>Crab</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="milk" />
            <span>Milk</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="peach" />
            <span>Peach</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="shellfish" />
            <span>Shellfish</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="sulfites" />
            <span>Sulfites</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="wheat" />
            <span>Wheat</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="none" />
            <span>None</span>
          </label>
        </div>
        <div></div>
      </div>
    </div>
    <div class="button-frame-third">
      <div class="frame-button">
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="buckwheat" />
            <span>Buckwheat</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="egg" />
            <span>Egg</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="mussel" />
            <span>Mussel</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="peanut" />
            <span>Peanut</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="shrimp" />
            <span>Shrimp</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="tomato" />
            <span>Tomato</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="none" />
            <span>None</span>
          </label>
        </div>
        <div>
          <label>
            <input type="checkbox" v-model="allergy" value="none" />
            <span>None</span>
          </label>
        </div>
      </div>
    </div>

    <button class="next-button" @click="click_next">Next</button>

    <div class="component-12">
      <div class="rectangle-269"></div>
      <div class="foody-logo">FOODY</div>

      <button class="arrow-back">
        <img :src="arrow_back" width="25" @click="click_back" />
      </button>
      <div
        class="please-select-the-food-you-are-allergic-to-from-the-following"
      >
        Please select the food you are allergic to from the following.
      </div>

      <div class="excludes-menus-containing-the-selected-food">
        Excludes menus containing the selected food
      </div>

      <div class="group-121">
        <div class="step-1">Step 1</div>
      </div>

      <div class="group-122">
        <div class="step-2">Step 2</div>
      </div>

      <div class="group-123">
        <div class="step-3">Step 3</div>
      </div>

      <div class="line-left">
        <img :src="line" />
      </div>

      <div class="line-right">
        <img :src="line" />
      </div>
    </div>
  </div>
</template>

<script>
import arrow_back from '@/assets/icon/arrow-back.png';
import line from '@/assets/icon/Line.png';

export default {
  data() {
    return {
      allergy: [],
      arrow_back,
      line,
    };
  },
  methods: {
    click_back() {
      location.href = '#/signup';
    },
    click_next() {
      console.log(this.allergy);
      alert(this.allergy);
    },
  },
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Dangrek&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;500;600;700;800&display=swap');

.selecting-page,
.selecting-page * {
  box-sizing: border-box;
}
.selecting-page {
  background: #ffffff;
  width: 390px;
  height: 844px;
  position: relative;
  overflow-y: auto;
}
.button-frame {
  display: inline-flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 30px;
  top: 336px;
}
.button-frame-second {
  display: inline-flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 145px;
  top: 336px;
}
.button-frame-third {
  display: inline-flex;
  flex-direction: column;
  gap: 0px;
  align-items: flex-start;
  justify-content: flex-start;
  position: absolute;
  left: 260px;
  top: 336px;
}

.arrow-back {
  position: absolute;
  left: 30px;
  top: 64px;
  width: 25px;
  height: 25px;
  overflow: visible;
  border: none;
  background-color: white;
  cursor: pointer;
}
.next-button {
  background: #1c9181;
  width: 390px;
  height: 50px;
  position: absolute;
  left: 0px;
  top: 794px;
  color: #ffffff;
  text-align: center;
  font: 400 30px 'Jua', sans-serif;
  letter-spacing: 1.8px;
  border: none;
  cursor: pointer;
}

.component-12 {
  width: 390px;
  height: 252px;
  position: sticky;
  left: 0px;
  top: 0px;
}
.rectangle-269 {
  background: #ffffff;
  width: 390px;
  height: 333px;
  position: absolute;
  left: 0px;
  top: 0px;
}
.please-select-the-food-you-are-allergic-to-from-the-following {
  color: #000000;
  text-align: center;
  font: 500 20px 'Noto Sans', sans-serif;
  position: absolute;
  left: 15.77px;
  top: 221.65px;
  width: 358.46px;
  height: 56.7px;
}
.excludes-menus-containing-the-selected-food {
  color: #000000;
  text-align: center;
  font: 300 13px 'Noto Sans', sans-serif;
  position: absolute;
  left: 35.74px;
  top: 283.6px;
  width: 317.47px;
  height: 18.9px;
}
.group-121 {
  position: sticky;
  inset: 0;
}
.step-1 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 80px;
  height: 35px;
  position: absolute;
  left: 45px;
  top: 139px;
  color: #000000;
  text-align: center;
  font: 600 15px 'Noto Sans', sans-serif;
  padding-top: 5px;
}

.group-122 {
  position: sticky;
  inset: 0;
}
.step-2 {
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 80px;
  height: 35px;
  position: absolute;
  left: 155px;
  top: 139px;
  color: #000000;
  text-align: center;
  font: 600 15px 'Noto Sans', sans-serif;
  padding-top: 5px;
}

.group-123 {
  position: sticky;
  inset: 0;
}
.step-3 {
  background: #1c9181;
  border-radius: 24px;
  border-style: solid;
  border-color: #1c9181;
  border-width: 2px;
  width: 80px;
  height: 35px;
  position: absolute;
  left: 265px;
  top: 139px;
  color: #ffffff;
  text-align: center;
  font: 600 15px 'Noto Sans', sans-serif;
  padding-top: 5px;
}

.line-left {
  position: absolute;
  left: 125px;
  top: 142px;
  overflow: visible;
}
.line-right {
  position: absolute;
  left: 235px;
  top: 142px;
  overflow: visible;
}
.foody-logo {
  color: #1c9181;
  text-align: left;
  font-family: 'Dangrek', cursive;
  font-size: 34px;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 2.04px;
  line-height: normal;
  position: absolute;
  left: 145px;
  top: 49px;
  width: 102px;
  height: 33px;
}
.frame-button {
  max-width: 330px;
  margin: 0 auto;
  display: felx;
  flex-wrap: wrap;
}
.frame-button div {
  margin-bottom: 10px;
}
.frame-button div label {
  cursor: pointer;
}
.frame-button div label input[type='checkbox'] {
  display: none;
}
.frame-button div label span {
  position: relative;
  display: inline-block;
  background: #f1f1f1;
  border-radius: 5px;
  width: 100px;
  height: 42px;
  color: #000000;
  text-align: center;
  font: 400 17px 'Noto Sans', sans-serif;
  padding-top: 9px;
  transition: 0.5s;
  overflow: hidden;
}
.frame-button div label span::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
.frame-button div label input[type='checkbox']:checked ~ span {
  background: #42b2a3;
}
</style>
