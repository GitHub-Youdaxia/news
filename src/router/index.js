import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import detail from '@/components/detail/detail'
import morelist from '@/components/morelist/morelist'
import homeChildRouter2 from '@/components/Home/con2'
import homeChildRouter3 from '@/components/Home/con3'

Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: 'Home',
      component: Home,
      children: [{
          // 当 /user/:id/profile 匹配成功，
          // UserProfile 会被渲染在 User 的 <router-view> 中
          path: 'childRouter2',
          component: homeChildRouter2

        },
        {
          // 当 /user/:id/posts 匹配成功
          // UserPosts 会被渲染在 User 的 <router-view> 中
          path: 'childRouter3',

          component: homeChildRouter3

        }
      ]

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

