<template>
  <div class="selecting-page">
    <div class="please-select-the-food-you-are-allergic-to-from-the-following">
      Please select the food you are allergic to from the following.
    </div>

    <div class="excludes-menus-containing-the-selected-food">
      Excludes menus containing the selected food
    </div>

    <div class="allergy-row">
      <div v-for="item in allergy_list" :key="item">
        <div>
          <label>
            <input type="checkbox" v-model="allergy" :value="item.number" />
            <span v-text="item.name"></span>
          </label>
        </div>
      </div>
    </div>

    <div class="register">
      <button class="Register-button" @click="click_next">Register</button>
    </div>
  </div>
</template>

<script>
import arrow_back from '@/assets/icon/arrow-back.png';
import line from '@/assets/icon/Line.png';

export default {
  data() {
    return {
      allergy_list: [
        { name: 'Abalone', number: '19' },
        {
          name: 'Beef',
          number: '16',
        },
        {
          name: 'Buckwheat',
          number: '3',
        },
        {
          name: 'Chicken',
          number: '15',
        },
        {
          name: 'Crab',
          number: '8',
        },
        {
          name: 'Egg',
          number: '1',
        },
        {
          name: 'Mackerel',
          number: '7',
        },
        {
          name: 'Milk',
          number: '2',
        },
        {
          name: 'Mussel',
          number: '18',
        },
        {
          name: 'Oyster',
          number: '20',
        },
        {
          name: 'Peach',
          number: '11',
        },
        {
          name: 'Peanut',
          number: '4',
        },
        {
          name: 'Pork',
          number: '10',
        },
        {
          name: 'Shellfish',
          number: '17',
        },
        {
          name: 'Shrimp',
          number: '9',
        },
        {
          name: 'Soy',
          number: '5',
        },
        {
          name: 'Sulfites',
          number: '13',
        },
        {
          name: 'Tomato',
          number: '12',
        },
        {
          name: 'Walnut',
          number: '14',
        },
        {
          name: 'Wheat',
          number: '6',
        },
        {
          name: 'None',
          number: 'none',
        },
        {
          name: 'None',
          number: 'none',
        },
        {
          name: 'None',
          number: 'none',
        },
        {
          name: 'None',
          number: 'none',
        },
      ],
      arrow_back,
      line,
      allergy: [],
    };
  },
  methods: {
    click_back() {
      location.href = '#/signup';
    },
    click_next() {
      console.log(this.allergy_list);
      this.$emit('alg_data', this.allergy);
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
  width: 100%;
  height: calc(var(--vh, 1vh) * 100 - 130px);
  top: 140px;
  position: absolute;
  overflow-y: auto;
}

.allergy-row {
  top: 140px;
  position: absolute;
  width: 100%;
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}
.allergy-row div {
  display: flex;
  width: 30%;
  margin-bottom: 10px;
  justify-content: center;
}
.allergy-row div label {
  cursor: pointer;
}
.allergy-row div label input[type='checkbox'] {
  display: none;
}
.allergy-row div label span {
  position: relative;
  display: inline-block;
  background: #f1f1f1;
  border-radius: 5px;
  width: 110px;
  height: 42px;
  color: #000000;
  text-align: center;
  font: 400 17px 'Noto Sans', sans-serif;
  padding-top: 9px;
  transition: 0.5s;
  overflow: hidden;
}
.allergy-row div label span::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
}
.allergy-row div label input[type='checkbox']:checked ~ span {
  background: #42b2a3;
}
.register {
  position: absolute;
  width: 100%;
  height: 50px;
  bottom: 0px;
}
.Register-button {
  background: #1c9181;
  width: 100%;
  height: 50px;
  color: #ffffff;
  text-align: center;
  font: 400 30px 'Jua', sans-serif;
  letter-spacing: 1.8px;
  border: none;
  cursor: pointer;
}

.please-select-the-food-you-are-allergic-to-from-the-following {
  color: #000000;
  text-align: center;
  font: 500 20px 'Noto Sans', sans-serif;
  position: absolute;
  left: 16px;
  top: 20.3px;
  width: 91.8%;
  height: 57.4px;
}
.excludes-menus-containing-the-selected-food {
  color: #000000;
  text-align: center;
  font: 300 13px 'Noto Sans', sans-serif;
  position: absolute;
  left: 36px;
  top: 81px;
  width: 81.3%;
  height: 19.5px;
}
</style>
