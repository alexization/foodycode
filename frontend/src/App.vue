<template>
  <main>
    <div class="container">
      <router-view />
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
  overflow: scroll;
  width: 100vw;
  height: calc(var(--vh, 1vh) * 100);
  background: #ddd;
}
</style>
