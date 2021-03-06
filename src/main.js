// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import detail from './components/detail/detail'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import VueResource from 'vue-resource'
Vue.use(VueResource);
Vue.config.productionTip = false
Vue.use(ElementUI, { size: 'small' })
/* eslint-disable no-new */

new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
// new Vue({
//   el: '#content',
//   router,
//   components: { detail },
//   template: '<detail/>'
// })

//全局注册组件
// Vue.component("my-header",{
//   template: "<h3 >my-header</h3>"

// })

