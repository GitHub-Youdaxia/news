<template>
  <div class="content">
    
    <el-row>
      <el-col :span="18" :offset=3>
        <el-row>
          <div class='news-list' v-bind:key="index" v-for="(item, index) in newsClassArr">
              <newsBlock :news="item" :num='10'></newsBlock>
          </div>
        </el-row>
      </el-col>

    </el-row>
  </div>
</template>

<script>
import newsBlock from './newsBlock'

  export default {
    name: 'content',
    data() {
      return {
        msg: 'header',
        newsClassArr: [],
        data: ''
      }
    },
    mounted: function () {
      this.$http.get('/public/index/news_classification').then(response => {
        console.log(response);
        // get body data
        // this.someData = response.body;
        this.newsClassArr = response.body


      }, response => {
        console.log("error");
      });
    },
      components:{newsBlock}

  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .content {
    padding-top: 10px;
  }

  .news-list {
    width: 50%;
    float: left;
    height: 400px;
  }

</style>

