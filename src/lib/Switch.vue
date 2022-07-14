<template>
  <button class="gulu-switch" @click="toggle" :class="{ 'gulu-checked': value }">
    <span></span>
  </button>
</template>
<script lang="ts">
import { ref } from "vue";

export default {
  props: {
    value: Boolean
  },
  setup(props, context) {
    const checked = ref(false)

    const toggle = () => {
      context.emit('update:value', !props.value)
      // this.$emit()
    }
    return { checked, toggle }
  }
}
</script>

<style lang="scss" >
$h: 22px;
$h2: $h - 4px;



.gulu-switch {
  height: $h;
  width: $h*2;
  border: none;
  background: #bfbfbf;
  border-radius: $h*0.5;
  position: relative;

  >span {
    position: absolute;
    top: 2px;
    left: 2px;
    height: $h2;
    width: $h2;
    background: white;
    border-radius: $h2 *0.5;
    transition: all 250ms;
  }

  &.mr-1 {
    background: green;
  }

  &.mr-2 {
    background: greenyellow;
  }

  &.mr-3 {
    background: yellow;
  }

  &.mr-4 {
    background: red;
  }

  &.gulu-checked {
    background: #4285f4;

    >span {
      left: calc(100% - #{$h2} - 2px);

    }
  }

  &:focus {
    outline: none; //去掉奇怪的边框
  }

  &:active {
    >span {
      width: $h2 + 4px;
    }
  }

  &.gulu-checked:active {
    >span {
      width: $h2 + 4px;
      margin-left: -4px;
    }
  }
}
</style>