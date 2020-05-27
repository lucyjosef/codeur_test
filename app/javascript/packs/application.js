// app/javascript/packs/application.js

import Vue from 'vue'
import App from '../components/app.vue'
// import './stylesheets/application.scss'
import 'bootstrap'

Vue.component('modal', {
  template: '#modal-template',
  props: ['show'],
  methods: {
    savePost: function () {
      // Some save logic goes here...
      
      this.$emit('close');
    }
  }
});

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('app'))
  const app = new Vue({
    el: 'app',
    template: '<App/>',
    components: { App },
    data: {
      showModal: false
    }
  })

  console.log(app)
})