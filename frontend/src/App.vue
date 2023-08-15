<template>
  <div class="container">
    <router-view />
  </div>
</template>

<script>
export default {
  name: "App",
  components: {},
};
</script>

<style>
body {
  margin: 0;
}

.container {
  margin: 0 auto;
  position: relative;
  width: 100%;
  max-width: 500px;
  box-shadow: rgba(0, 0, 0, 0.08) 0 0 20px 0;
  min-height: 100vh;
  background: #ffffff;
}
</style>
