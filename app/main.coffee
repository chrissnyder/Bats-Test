$ = window.jQuery
Backbone = require 'backbone'
Backbone.$ = $

app = document.querySelector '#app'

StackOfPages = require 'stack-of-pages'
stack = new StackOfPages
  "#/": require("./views/home")()
  "#/classify/:videoId": require "./controllers/classify"
  "#/help": require("./views/help")()

app.appendChild stack.el