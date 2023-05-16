import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

const app = createApp(
  App
  // data() {
  //   return {
  //     appName: 'Games App',
  //     userName: 'Mariana',
  //     games: []
  //   }
  // }
)

app.use(router)

app.mount('#app')
