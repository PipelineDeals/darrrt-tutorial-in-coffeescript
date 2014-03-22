'use strict'

angular.module('pirateBadge')
  .directive 'badge', ->
    restrict: 'E'
    templateUrl: 'views/badge.html'
    scope:
      name: '@'
