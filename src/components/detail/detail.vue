<template>
  <div class="main">
    <pHeader></pHeader>
    <newsClass></newsClass>
    <detailNews :id="id"></detailNews>
  </div>
</template>

<script>
  import detailNews from './article'
  import pHeader from '../Header/header'
  import newsClass from '../newsClass/newsClass'
  export default {
    name: 'detail',
    data() {
      return {
        msg: 'Welcome to Your Vue.js App',
        id: ''
      }
    },
    methods: {
      getId(name) {
        /**
         * 获取地址栏参数
         */
        let reg = new RegExp("(^|\\?|&)" + name + "=([^&]*)(\\s|&|$)", "i");
        if (reg.test(window.location.href)) {
          return unescape(RegExp.$2.replace(/\+/g, " "))
        }
        return undefined
      }
    },
    created: function () {
      this.id =  this.$route.query.id*1;
    },
    components: {
      detailNews,
      pHeader,
      newsClass
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

