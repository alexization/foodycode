<template>
  <teleport to="body">
    <div class="backdrop" v-if="isVisible">
      <div class="modal-container">
        <slot></slot>
      </div>
    </div>
  </teleport>
</template>

<script>
import { ref } from "vue";
export default {
  name: "searchModal",
  setup() {
    const isVisible = ref(false);

    const open = () => {
      isVisible.value = true;
    };
    const close = () => {
      isVisible.value = false;
    };
    return {
      isVisible,
      open,
      close,
    };
  },
};
</script>

<style>
.backdrop {
  z-index: 999;
  display: flex;
  position: fixed;
  align-items: center;
  justify-content: center;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.2);
}
.modal-container {
  background: white;
  max-width: 400px;
  width: 100%;
  padding: 20px;
}
</style>
