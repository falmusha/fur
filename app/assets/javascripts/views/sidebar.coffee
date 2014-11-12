define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/sidebar'
], ($, _, Backbone, sidebarTemplate) ->

  class SidebarView extends Backbone.View

    className: 'sidebar col-md-2'

    initialize: ->
      @render()

    render: ->
      template = sidebarTemplate {}
      @$el.html template
      @

