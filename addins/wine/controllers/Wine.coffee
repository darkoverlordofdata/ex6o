#+--------------------------------------------------------------------+
#| Wine.coffee
#+--------------------------------------------------------------------+
#| Copyright DarkOverlordOfData (c) 2012 - 2013
#+--------------------------------------------------------------------+
#|
#| This file is a part of Exspresso
#|
#| Exspresso is free software; you can copy, modify, and distribute
#| it under the terms of the MIT License
#|
#+--------------------------------------------------------------------+

load_class APPPATH+'core/PublicController.coffee'
#
#	Class Wine
#
module.exports = class Wine extends application.core.PublicController

  #
  # Display the Wines page
  #
  # @return [Void]
  #
  indexAction: () ->
    @theme.view 'index'

  dashboardAction: ->
    @theme.view 'dashboard'
