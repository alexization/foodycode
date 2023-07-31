<template>
  <div class="container">
    <router-view class="router-view" />
  </div>
</template>

<script>
export default {
  name: 'App',
};
</script>

<style>
body {
  margin: 0;
}
.container {
  min-height: calc(100vh - 70px);
  overflow: auto;
  margin: 0;
  background: rgb(255, 255, 255);
  background-position: center;
  position: relative;
  z-index: 0;
}

.router-view {
  max-width: 824px;
  min-height: calc(100vh - 73px);
  box-sizing: border-box;
  margin: auto;
  padding: 0 0px;
  padding-top: 0px;
  overflow: hidden;
}
</style>
