# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./controllers/main

# Creates new Angular module called 'Forecast'
Forecast = angular.module('Forecast', ['ngRoute'])

# Sets up routing
Forecast.config(['$routeProvider', ($routeProvider) ->
  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' })
])
