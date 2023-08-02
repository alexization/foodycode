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
  margin: 0px;
  background: rgb(255, 255, 255);
  background-position: center;
  position: relative;
}

.router-view {
  max-width: 824px;
  min-height: calc(100vh - 73px);
  box-sizing: border-box;
  margin: auto;
  padding: 0px;
  overflow: hidden;
}
</style>
