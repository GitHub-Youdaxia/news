<template>
  <div class="main">


<router-link :to="'/childRouter2'">Home-child-router2</router-link>
<router-link :to="'/childRouter3'">Home-child-router3</router-link>


    <h3 style="text-align:center">
      <router-view></router-view>
    </h3>
    <commonHeader></commonHeader>
    <newsClass></newsClass>
    <newsContent></newsContent>
  </div>
</template>

<script>
  import commonHeader from './Header/header'
  import newsClass from './newsClass/newsClass'
  import newsContent from './content/content'
  export default {
    name: 'HelloWorld',
    data() {
      return {
        msg: 'Welcome to Your Vue.js App',
        ok: true
      }
    },
    mounted: function () {

    },
    updated: function () {

    },
    components: {
      commonHeader,
      newsClass,
      newsContent
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  h1,
  h2 {
    font-weight: normal;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  li {
    display: inline-block;
    margin: 0 10px;
  }

  a {
    color: #42b983;
  }

</style>

