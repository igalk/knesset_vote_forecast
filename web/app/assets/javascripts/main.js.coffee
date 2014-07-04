# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./controllers/main

# Creates new Angular module called 'Blog'
Forecast = angular.module('Forecast', ['ngRoute'])

# Sets up routing
Forecast.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/post', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' })
])
