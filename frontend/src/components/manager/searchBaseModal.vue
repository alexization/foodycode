<template>
  <searchModal ref="searchBaseModal">
    <div class="back">
      <span>식재료 추가</span>
      <button @click="close">
        <img src="@/assets/icon/close.png" />
      </button>
    </div>
    <div class="row-group">
      <div>
        <div class="ingd-group-modal">
          <div class="ingd-search">
            <img src="@/assets/icon/search.png" />
            <input type="text" id="ingd_name_modal" />
            <button @click="get_alg">검색</button>
          </div>
          <div class="content-container" v-if="update_status === false">
            <div v-for="Ingd in content" :key="Ingd">
              <IngdCard
                :IngdName="Ingd.igd_name"
                :IngdInfo="Ingd"
                @add_ingd="get_ingdInfo"
              ></IngdCard>
            </div>
          </div>
          <div class="content-container" v-else>
            <div v-for="Ingd in update_content" :key="Ingd">
              <IngdCard
                :IngdName="Ingd.igd_name"
                :IngdInfo="Ingd"
                @add_ingd="get_ingdInfo"
              ></IngdCard>
            </div>
          </div>
        </div>
      </div>
      <div class="ingd-row">
        <div class="ingd-row-line">
          <div class="Ingd-box">
            <div v-for="Ingd in ingd_list" :key="Ingd">
              <IngredientsInfoVue
                :IngdArray="Ingd"
                @click="delete_info(Ingd[0], $event)"
              ></IngredientsInfoVue>
            </div>
          </div>
        </div>
      </div>
      <div class="add-button">
        <button>추가하기</button>
      </div>
    </div>
  </searchModal>
</template>

<script>
import searchModal from "@/components/manager/searchModal.vue";
import IngdCard from "@/components/manager/IngdAllergy.vue";
import IngredientsInfoVue from "@/components/manager/IngredientsInfo.vue";
import axios from "axios";

import { ref } from "vue";
export default {
  components: {
    searchModal,
    IngdCard,
    IngredientsInfoVue,
  },
  props: {
    content: Array,
  },
  data() {
    return {
      update_content: Array,
      update_status: false,
      ingd_list: [],
    };
  },
  setup() {
    const searchBaseModal = ref(null);
    const resolvePromise = ref(null);
    const show = () => {
      searchBaseModal.value.open();
      return new Promise((resolve, _) => {
        resolvePromise.value = resolve;
        console.log(resolve);
      });
    };
    const confirm = () => {
      searchBaseModal.value.close();
      resolvePromise.value(true);
    };
    const cancel = () => {
      searchBaseModal.value.close();
      resolvePromise.value(false);
    };
    const close = () => {
      searchBaseModal.value.close();
    };
    return { searchBaseModal, show, confirm, cancel, close };
  },
  methods: {
    get_alg() {
      const ingdName = document.getElementById("ingd_name_modal").value;
      console.log(ingdName);
      axios.get(`/api/igd/${ingdName}`).then((response) => {
        console.log(response.data);
        this.update_content = response.data;
        if (this.update_status === false) {
          this.update_status = !this.update_status;
        }
      });
    },
    get_ingdInfo(data) {
      const temp = [];
      temp.push(data.igd_name);
      temp.push(data.arr_algid);
      this.ingd_list.unshift(temp);
      console.log(this.ingd_list);
    },
    delete_info(name) {
      for (let i = 0; i < this.ingd_list.length; i++) {
        if (this.ingd_list[i][0] === name) {
          this.ingd_list.splice(i, 1);
          i--;
        }
        console.log(this.ingd_list);
      }
    },
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap");

.row-group {
  width: 100%;
  height: 600px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.back {
  width: 100%;
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}
.back button {
  border: none;
  background: none;
  width: 20px;
  height: 20px;
}
.back img {
  width: 100%;
  height: 100%;
}
.content-container {
  width: 100%;
  background: rgba(0, 0, 0, 0.035);
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  height: 400px;
  overflow-y: auto;
  margin-top: 10px;
}
.ingd-group-modal {
  display: flex;
  width: 100%;
  justify-content: center;
  flex-direction: column;
}
.ingd-search {
  width: 100%;
  height: 50px;
  border: 1px solid #1c9181;
  border-radius: 20px;
  border-width: 2px;
  display: flex;
  align-items: center;
}
.ingd-search img {
  width: 32px;
  height: 32px;
  margin-left: 8px;
}
.ingd-search input[type="text"] {
  border: none;
  width: 100%;
  margin: 5px;
  height: 30px;
}
.ingd-search button {
  width: 30%;
  height: 30px;
  margin-right: 5px;
  border: none;
  background: #1c9181;
  color: white;
  border-radius: 13px;
  letter-spacing: 1px;
}
.ingd-row {
  height: 100px;
  overflow-x: auto;
  display: flex;
  align-items: center;
}
.ingd-row-line {
  height: 60px;
  border-radius: 10px;
}
.Ingd-box {
  display: flex;
  justify-content: flex-start;
  overflow-x: auto;
  width: 200%;
  height: 55px;
  margin: 0px auto;
  align-items: center;
}
.add-button {
  width: 100%;
  height: 50px;
}
.add-button button {
  border: none;
  background: #1c9181;
  color: white;
  width: 100%;
  height: 100%;
  border-radius: 20px;
  font: 500 18px "Noto Sans KR", sans-serif;
}
</style>
