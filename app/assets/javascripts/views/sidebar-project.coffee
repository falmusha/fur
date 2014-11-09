define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/sidebar-project'
], ($, _, Backbone, sidebarTemplate) ->

  class SidebarProjectView extends Backbone.View

    className: 'sidebar-projects'

    initialize: ->
      @collection.fetch success: => @render()

    render: ->
      template = sidebarTemplate projects: @collection.toJSON()
      @$el.html template
      @

