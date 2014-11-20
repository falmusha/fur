define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/home'
], ($, _, Backbone, homeTemplate) ->

  class HomeView extends Backbone.View

    className: 'row home'

    initialize: ->
      @render()

    render: ->
      template = homeTemplate {}
      @$el.html template
      @

