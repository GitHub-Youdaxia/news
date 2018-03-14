import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import detail from '@/components/detail/detail'
import morelist from '@/components/morelist/morelist'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/detail',
      name: 'detail',
      component: detail
    },
    {
      path: '/morelist',
      name: 'morelist',
      component: morelist
    }
  ]
})
