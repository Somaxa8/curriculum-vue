<template>
    <div :class="`ma-${margin}`">
        <div :class="`d-flex justify-${position}`" style="margin-bottom: -7px">
            <div class="center"></div>
        </div>
        <div class="line"></div>
    </div>
</template>

<script lang="ts">
import {Component, Vue, Prop} from "vue-property-decorator";

@Component
export default class Divider extends Vue {
    // positions: center, start
    @Prop({default: "center"}) readonly position!: string
    @Prop({default: "3"}) readonly margin!: string

}
</script>

<style scoped>
.line {
    width: 100%;
    height: 2px;
    background: #2f333c;
}
.center {
    width: 60px;
    height: 14px;
    background: #0ea7e0;
}
</style>