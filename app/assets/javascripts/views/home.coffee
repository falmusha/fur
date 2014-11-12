define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/home'
], ($, _, Backbone, homeTemplate) ->

  class HomeView extends Backbone.View

    className: 'home row'

    initialize: ->
      @render()

    render: ->
      template = homeTemplate {}
      @$el.html template
      @

