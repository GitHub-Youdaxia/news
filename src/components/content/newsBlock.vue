<template>
  <div class="news">
      <div class="title">
          <h4>{{news['class_name']}}</h4>
      </div>
      <div class="content">
        <ul class="news-ul">
            <li class="news-item" v-bind:key="index" v-for="(item, index) in data">
              <router-link :to="{path:'/detail',query:{id:item['id']}}" v-bind:href="'/detail?id='+item['id']">{{ item['title'] }}</router-link>
            </li>
        </ul>
      </div>
  </div>
</template>

<script>
  export default {
    name: 'newsBlock',
    props: {
      news: {
      type: Object,
      required: true
    },
    num:{
      type: Number,
      default: 10
    }
    },
    data() {
      return {
        data: '',
        newsRid:this.news['rid']
      }
    },
    mounted: function () {
      this.$http.get('/public/index/index/getNews?newsRid='+this.newsRid+'&num='+this.num).then(response => {
        console.log(response);
        // get body data
        // this.someData = response.body;
        this.data = response.body

      }, response => {
        console.log("error");
      });
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>


</style>

