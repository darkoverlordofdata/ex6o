#+--------------------------------------------------------------------+
#| Blog.coffee
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

#
#	Blog Module
#

module.exports = class Katra extends system.core.Module

  name          : 'Katra'
  description   : ''
  path          : __dirname
  active        : true

  #
  # Initialize the module
  #
  #   Install if needed
  #   Load the categories
  #
  # @return [Void]
  #
  initialize: () ->
    @controller.load.model 'Katras'
    @controller.katras.install() if @controller.install


