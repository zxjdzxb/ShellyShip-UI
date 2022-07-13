<demo>
Color
</demo>
<template>
    <Switch v-model:value="bool" class="mr-1" />
    <Switch v-model:value="bool" class="mr-2" />
    <Switch v-model:value="bool" class="mr-3" />
    <Switch v-model:value="bool" class="mr-4" />
</template>

<script lang="ts">
import { ref } from 'vue'
import Switch from '../lib/Switch.vue'


export default {
    components: {
        Switch,
    },
    setup() {
        const bool = ref(false)
        return {
            bool
        }
    }
}
</script>