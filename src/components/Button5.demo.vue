<demo>
支持显示加载中
</demo>
<template>
  <div>
    <Button type="primary" loading>Loading...</Button>
    <Button type="primary" :loading="loading" @click="toLoading">
      <span v-if="!loading">Click me!</span>
      <span v-else>Loading...</span>
    </Button>
    <Button loading shape="circle"></Button>
    <Button>加载完毕</Button>
  </div>
</template>

<script lang="ts">
import Button from "../lib/Button.vue";

export default {
  components: {
    Button
  },
  data() {
    return {
      loading: false,
      loading2: false
    }
  },
  methods: {
    toLoading() {
      this.loading = true;
    },
    toLoading2() {
      this.loading2 = true;
    }
  }
}
</script>