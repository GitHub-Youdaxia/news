<template>
  <div class="tab2-con">
    tab组件中
    <ul class="tab-list clearFloat">
      <li v-for="(item,index) in tabs" :class="{active:index == num}" @click="tab(index)">{{item}}</li>
    </ul>
    <div class="tabCon">
      <div class="tabCon-div" v-for='(itemCon,index) in tabContents' v-show=" index == num">{{itemCon}}</div>
    </div>


  </div>
</template>

<script>
  export default {
    name: 'tab',
    props: {
      tabList: {
        type: Array,
        required: true
      },
      tabCon: {
        type: Array,
        required: true
      }
    },
    data() {
      return {
        msg: 'header',
        newsClassArr: [],
        data: '',
        tabs: this.tabList,

        tabContents: this.tabCon,

        num: 0
      }
    },
    methods: {
      tab(index) {
        this.num = index;
      },
    },
    mounted: function () {
      //   this.$http.get('/public/index/news_classification').then(response => {
      //     // console.log(response);
      //     // get body data
      //     // this.someData = response.body;
      //     this.newsClassArr = response.body


      //   }, response => {
      //     console.log("error");
      //   });
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

