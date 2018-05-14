<template>
  <div class="main">
<router-link :to="'/childRouter2'">Home-child-router2</router-link>
<router-link :to="'/childRouter3'">Home-child-router3</router-link>

    <pHeader></pHeader>
    <newsClass></newsClass>
    <el-row>
      <el-col :span="18" :offset=3>
        <el-row>
          <ul>
            <li v-bind:key="index" v-for="(item, index) in listArr">
              <router-link :to="{path:'/detail',query:{id:item['id']}}" v-bind:href="'/detail?id='+item['id']">{{ item['title'] }}</router-link>
            </li>
          </ul>
        </el-row>
      </el-col>

    </el-row>

  </div>
</template>

<script>
  import pHeader from '../Header/header'
  import newsClass from '../newsClass/newsClass'
  export default {
    name: 'morelist',
    data() {
      return {
        msg: 'Welcome to Your Vue.js App',
        id: '',
        listArr: ''
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
      this.id = this.$route.query.rid * 1;
      this.$http.get('/public/index/index/all?rid=' + this.id).then(response => {
        console.log(response);
        // get body data
        // this.someData = response.body;
        this.listArr = response.body

      }, response => {
        console.log("error");
      });
    },
    updated: function () {
      this.id = this.$route.query.rid * 1;
      this.$http.get('/public/index/index/all?rid=' + this.id).then(response => {
        console.log(response);
        // get body data
        // this.someData = response.body;
        this.listArr = response.body

      }, response => {
        console.log("error");
      });
    },
    components: {
      pHeader,
      newsClass
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>


</style>

