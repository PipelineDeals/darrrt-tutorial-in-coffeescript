'use strict'

angular.module('pirateBadge', [])

angular.module('pirateBadge')
  .controller 'BadgesController', ($scope) ->
    $scope.name = ""

    $scope.inputIsNotEmpty = -> if $scope.name.match(/\S/) then true else false
    $scope.label = ->
      if $scope.inputIsNotEmpty() then "Arrr! Write yer name!" else "Aye! Gimme a name!"

    $scope.generateName = ->
      $scope.name = "Anne Bonney"
