<template>
  <div>
    <button class="go_edit" @click="edit_page">Go Edit Restaurant Page</button>
    <button class="go_edit_menu" @click="edit_menu">Go Edit Menu Page</button>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods: {
    edit_page() {
      location.href = "#/restedit";
    },
    edit_menu() {
      location.href = "#/menuedit";
    },
  },
};
</script>

<style scoped>
.go_edit {
  position: absolute;
  top: 100px;
  width: 100%;
  height: 50px;
  font-size: 24px;
}
.go_edit_menu {
  position: absolute;
  top: 180px;
  width: 100%;
  height: 50px;
  font-size: 24px;
}
</style>
