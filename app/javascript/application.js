// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// import jquery from "jquery"
import $ from "jquery"
// window.$ = jquery


//= require semantic-ui

$(()=>{
  console.log('hello application.js');
})