define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/sidebar'
], ($, _, Backbone, sidebarTemplate) ->

  class SidebarView extends Backbone.View

    className: 'sidebar col-1-8'

    initialize: ->
      @render()

    render: ->
      template = sidebarTemplate {}
      @$el.html template
      @

