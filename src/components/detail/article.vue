<template>
  <div class="article">
    <el-row>
      <el-col :span="18" :offset=3>
        <h3>{{article['title']}}
        </h3>
        <!-- <span style="display:none">{{id}}</span> -->
        <div class='article'>
            {{article['content']}}
        </div>
      </el-col>

    </el-row>
  </div>
</template>

<script>
  export default {
    name: 'showarticle',
    props: {
      id: {
        required: true
      }
    },
    data() {
      return {
        msg: ' dd.js ',
        article:{}
      }
    },
    created: function () {
      this.$http.get('/public/index/index/detail?id=' + this.id).then(response => {
        // get body data
        // this.someData = response.body;
        this.article = response.body
        console.log("dddddddddddddd"+this.article )

      }, response => {
        console.log("error");
      });
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.article{min-height: 100px;}
.article h3{text-align: center}

</style>

