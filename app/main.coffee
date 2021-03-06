$ = window.jQuery
Backbone = require 'backbone'
Backbone.$ = $

app = document.querySelector '#app'

navigationContainer = document.querySelector '.navigation-container'
navigationContainer.insertAdjacentHTML 'afterBegin', require('./views/navigation')()

StackOfPages = require 'stack-of-pages'
stack = new StackOfPages
  "#/": require('./views/home')()
  "#/classify/:videoId": require './controllers/classify'
  "#/directions": require('./views/directions')()
  "#/help": require('./views/help')()

app.appendChild stack.el
