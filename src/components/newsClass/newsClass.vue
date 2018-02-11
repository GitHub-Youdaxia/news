<template>
  <div class="header">
    <el-row >
      <el-col :span="18" :offset=3>
        <p>        {{ response }}
      </p>
      </el-col>
    </el-row>
  </div>
</template>

<script>
// import newsClass from '../../../newsClass'
export default {
  name: 'pubHeader',
  data () {
    return {
      response:'',
      data: ''
    }
  },
mounted: function () {
    // console.log(newsClass) http://127.0.0.1:80/public/
       this.$http.get('api/hello/d').then(response => {
             console.log(response);
            // get body data
            // this.someData = response.body;
            this.response=response.body

        }, response => {
            console.log("error");
        });
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
