<template>
  <div class="header">
    <el-row >
      <el-col :span="4" :offset=3>
        <div class="logo">
          <a href="">
            <h1 class="title">新闻网站</h1>
            <img src="../../assets/logo.png" alt="">
          </a>
        </div>
      </el-col>
      <el-col :span="8" :offset=2>
        <div class="serach-box">
          <el-input class="serach-input"  placeholder="请输入内容" v-model="serachCon" >
            <el-button slot="append" icon="el-icon-search"></el-button>
          </el-input>
        </div>
      </el-col>
      <el-col :span="4" >
        <div class="register-box">
          <el-button size="medium" type="text">注册</el-button>
          <el-button size="medium" type="text">登录</el-button>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: 'pubHeader',
  data () {
    return {
      msg: 'header',
      serachCon:'',
      data: ''
    }
  },
mounted: function () {
        // GET /someUrl
    //     this.$http.get('http://10.10.14.102:19201/?Command=Test').then(response => {
    //          console.log(response.data);
    //         // get body data
    //         // this.someData = response.body;

    //     }, response => {
    //         console.log("error");
    //     });
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.logo {padding-top: 10px;padding-bottom: 10px;}
.logo .title{text-indent: -1000em;display: none;};
.logo img{height: 60px;width: 160px;}
.serach-box,.register-box{padding-top: 25px;padding-bottom: 25px;}
.serach-input {width: 250px !important;}
.register-box{float: right;}
.header{border-bottom:2px solid #EE4B4B}
</style>
