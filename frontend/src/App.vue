<template>
  <main>
    <div class="container">
      <router-view/>
    </div>
  </main>
</template>

<script>
export default {
  name: 'App',
  components: {},
};
</script>

<style>
body {
  margin: 0;
}

.container {
  position: fixed;
  top: 0px;
  left: 0px;
  overflow: hidden;
  width: 100vw;
  height: 100vh;
  background: #ddd;
}
</style>
