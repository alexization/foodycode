<template>
  <searchModal ref="searchBaseModal">
    <div class="content-container">
      <p v-for="text in content" :key="text">
        {{ text }}
      </p>
    </div>
    <div class="buttons-container">
      <button class="btn-confirm" @click="confirm">확인</button>
      <button class="btn-cancel" @click="cancel">취소</button>
    </div>
  </searchModal>
</template>

<script>
import searchModal from "@/components/manager/searchModal.vue";
import { ref } from "vue";
export default {
  components: {
    searchModal,
  },
  props: {
    content: Array,
  },
  setup() {
    const searchBaseModal = ref(null);
    const resolvePromise = ref(null);
    const show = () => {
      searchBaseModal.value.open();
      return new Promise((resolve, _) => {
        resolvePromise.value = resolve;
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
    return { searchBaseModal, show, confirm, cancel };
  },
};
</script>

<style></style>
