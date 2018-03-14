<template>
  <div class="header">
    <el-row>
      <el-col :span="18" :offset=3>
        <ul class="nav">
          <li class="nav-item" v-bind:key="index" v-for="(item, index) in newsClassArr">
            <router-link :to="{path:'/morelist',query:{rid:item['rid']}}">{{ item['class_name'] }}</router-link>
          </li>
        </ul>
        <p>
        </p>
      </el-col>
    </el-row>
  </div>
</template>

<script>
  // import newsClass from '../../../newsClass'
  export default {
    name: 'pubHeader',
    data() {
      return {
        newsClassArr: '',
        data: ''
      }
    },
    mounted: function () {
      // console.log(newsClass) http://127.0.0.1:80/public/
      this.$http.get('/public/index/news_classification').then(response => {
        console.log(response);
        // get body data
        // this.someData = response.body;
        this.newsClassArr = response.body

      }, response => {
        console.log("error");
      });
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .nav {
    padding: 0px;
    height: 40px;
  }

  .nav .nav-item {
    float: left;
    padding-left: 10px;
    padding-right: 10px;
    line-height: 40px;
    font-size: 16px;
  }

  .nav .nav-item a {
    color: #333;
    text-decoration: none;
    display: block;
    height: 40px;
    width: 100%;
    box-sizing: border-box;
  }

  .nav .nav-item a:hover {
    color: #eb7350;
    border-bottom: 1px solid #EE4B4B;
  }

</style>

