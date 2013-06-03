#+--------------------------------------------------------------------+
#| Block.coffee
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
#	Block Module
#
# Manage content blocks
#

module.exports = class Block extends system.core.Module

  name          : 'Block'
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
    @controller.load.model 'Blocks'
    @controller.blocks.install() if @controller.install?
