import { createApp } from 'vue';
import App from './App.vue';
import './registerServiceWorker';
import router from './router';
import store from './store';
import axios from 'axios';

import './assets/main.css';

// createApp(App).use(router).mount('#app')
// [앱 생성 실시]
const app = createApp(App);
// [axios / http 통신]
app.config.globalProperties.$axios = axios;
// [라우터 사용 설정]
app.use(router);
app.use(store);
// [main 아이디 : 렌더링 시작점]
app.mount('#app');
