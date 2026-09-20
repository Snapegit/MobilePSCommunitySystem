	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import forum from '@/views/forum/list'
	import discussshejirenwu from '@/views/discussshejirenwu/list'
	import shejirenwu from '@/views/shejirenwu/list'
	import yonghu from '@/views/yonghu/list'
	import shejirenwuwancheng from '@/views/shejirenwuwancheng/list'
	import shejirenwujiedan from '@/views/shejirenwujiedan/list'
	import storeup from '@/views/storeup/list'
	import config from '@/views/config/list'
	import users from '@/views/users/list'
	import xuexiziyuan from '@/views/xuexiziyuan/list'
	import discussxuexiziyuan from '@/views/discussxuexiziyuan/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/forum',
			name: '我的发布',
			component: forum
		}
		,{
			path: '/discussshejirenwu',
			name: '设计任务评论',
			component: discussshejirenwu
		}
		,{
			path: '/shejirenwu',
			name: '设计任务',
			component: shejirenwu
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/shejirenwuwancheng',
			name: '设计任务完成',
			component: shejirenwuwancheng
		}
		,{
			path: '/shejirenwujiedan',
			name: '设计任务接单',
			component: shejirenwujiedan
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/xuexiziyuan',
			name: '学习资源',
			component: xuexiziyuan
		}
		,{
			path: '/discussxuexiziyuan',
			name: '学习资源评论',
			component: discussxuexiziyuan
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
