#+--------------------------------------------------------------------+
#| home.coffee
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
#	  Home Page Controller
#
#
#
load_class APPPATH+'core/PublicController.coffee'

module.exports = class Home extends application.core.PublicController

  #
  # Index
  #
  # Display the home page
  #
  # @access	public
  # @return [Void]
  #
  indexAction: ->

    @load.model 'Blogs'
    @blogs.getLatest ($err, $blog) =>

      @theme.view 'home_page', $err ||
        blog: $blog


