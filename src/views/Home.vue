<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav />
      <div class="banner">
        <h1>Shelly Ship</h1>
        <h2> 封装UI框架 </h2>
        <p class="actions">
          <a href="https://github.com">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
    <div class="features">
      <ul>
        <li>
          <svg>
            <use xlink:href="#icon-vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>围绕Vue 3 Composition API构建</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>基于 TypeScript </h3>
          <p>源代码采用 TypeScript 书写</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-light"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from '../components/Topnav.vue'

export default {
  components: { Topnav }
};
</script>

<style lang="scss">
$green: #02bcb0;
$border-radius: 4px;
$color: #404042;

.topnavAndBanner {
  background: rgb(50, 179, 255);
  background: linear-gradient(143deg, rgba(50, 179, 255, 1) 0%, rgba(235, 241, 255, 1) 33%, rgba(168, 232, 254, 1) 66%, rgba(12, 103, 197, 1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%); //MDN
}

.features {
  margin: 64px auto;
  padding: 0 16px;

  @media (min-width: 800px) {
    width: 800px;

    >ul {
      >li {
        width: 50%;
      }
    }
  }

  @media (min-width: 1200px) {
    width: 1200px;

    >ul {
      >li {
        width: 33.3333%;
      }
    }
  }

  >ul {
    display: flex;
    flex-wrap: wrap;

    >li {
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;

      >svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }

      >h3 {
        grid-area: title;
        font-size: 28px;
      }

      >p {
        grid-area: text
      }
    }
  }
}

.banner {
  color: $color;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;


  >.actions {
    padding: 8px 0;

    a {
      margin: 0 8px;
      background: $green;
      color: white;
      display: inline-block;
      padding: 8px 24px;
      border-radius: $border-radius;

      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>