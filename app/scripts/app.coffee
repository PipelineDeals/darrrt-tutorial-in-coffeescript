'use strict'

angular.module('pirateBadge', [])

angular.module('pirateBadge')
  .controller 'BadgesController', ($scope) ->
    @names = ['Anne', 'Mary', 'Jack', 'Morgan', 'Roger',
              'Bill', 'Ragnar', 'Ed', 'John', 'Jane' ]

    @appellations = ['Black','Damned', 'Jackal', 'Red', 'Stalwart', 'Axe',
                     'Young', 'Old', 'Angry', 'Brave', 'Crazy', 'Noble']

    @oneRandom = (list) ->
      list[Math.floor(Math.random() * list.length)]

    @pn = new PirateName

    @setPirateName = =>
      @pn.firstName = $scope.name
      @pn.appellation = @oneRandom @appellations

    $scope.name = ''

    $scope.$watch('name', @setPirateName)

    $scope.inputIsNotEmpty = -> if $scope.name.match(/\S/) then true else false

    $scope.label = ->
      if $scope.inputIsNotEmpty() then "Arrr! Write yer name!" else "Aye! Gimme a name!"

    $scope.generateName = =>
      $scope.name = @oneRandom @names

    $scope.pirateName = =>
      if @pn.firstName.match(/\S/) # not empty
        "#{@pn.firstName} the #{@pn.appellation}"
      else
        ''

class PirateName
  constructor: ->
    @firstName = ''
    @appellation = ''
