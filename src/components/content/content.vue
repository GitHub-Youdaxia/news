<template>
  <div class="content">

    <el-row>
      <el-col :span="14" :offset=3>

        <div class='news-list' v-bind:key="index" v-for="(item, index) in newsClassArr">
          <newsBlock :news="item" :num='10'></newsBlock>
        </div>
      </el-col>
      <el-col :span="4">
        <!-- <ul class="tab-list clearFloat">
          <li v-for="(item,index) in tabs" :class="{active:index == num}" @click="tab(index)">{{item}}</li>
        </ul>
        <div class="tabCon">
          <div class="tabCon-div" v-for='(itemCon,index) in tabContents' v-show=" index == num">{{itemCon}}</div>
        </div> -->



        <!-- <ul class="tab2 clearFloat">
          <li v-for="(item,index) in tabs2" :class="{active:index==curTab2}" @click="tab2(index)">{{item}}</li>


        </ul>
        <div class="tabCon2">
          <div v-for="(item,index) in tabContents2 " v-show="curTab2==index">{{item}}</div>

        </div> -->
        <tab :tabList="tabs" :tabCon="tabContents"></tab>
        <tab :tabList="tabs" :tabCon="tabContents"></tab>
        <tab :tabList="tabs" :tabCon="tabContents"></tab>
        <tab :tabList="tabs" :tabCon="tabContents"></tab>

      </el-col>

    </el-row>
  </div>
</template>

<script>
  import newsBlock from './newsBlock'
  import tab from './tab'
  export default {
    name: 'content',
    data() {
      return {
        msg: 'header',
        newsClassArr: [],
        data: '',
        tabs: ["标题一", "标题二", "标题三"],
        tabContents: ["内容一一", "内容二", "内容三"],
        // tabs2: ["标题一", "标题二", "标题三"],
        // tabContents2: ["内容一", "内容二", "内容三"],
        // curTab2: 1,
        num: 1
      }
    },
    methods: {
      tab(index) {
        this.num = index;
      },
      tab2(index) {
        this.curTab2 = index;
      }
    },
    mounted: function () {
      this.$http.get('/public/index/news_classification').then(response => {
        // console.log(response);
        // get body data
        // this.someData = response.body;
        this.newsClassArr = response.body


      }, response => {
        console.log("error");
      });
    },
    components: {
      newsBlock,
      tab

    }

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

  .tab2 {
    margin-top: 20px;
  }

  .tab-list li {
    float: left;
    width: 33%;
    text-align: center;

  }

  .tab2 li {
    float: left;
    width: 33%;
    text-align: center;

  }

  .clearFloat:after {
    display: block;
    clear: both;
    height: 0;
    visibility: hidden;
    content: ""
  }

  .clearFloat {
    zoom: 1
  }

  li.active {
    border-bottom: 1px solid red;
  }

</style>

