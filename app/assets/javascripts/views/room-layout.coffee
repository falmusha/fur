define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/room-layout'
], ($, _, Backbone, roomLayoutTemplate) ->

  class RoomLayoutView extends Backbone.View

    initialize: ->
      @render()

    render: ->
      template = roomLayoutTemplate {}
      @$el.html template
      @

