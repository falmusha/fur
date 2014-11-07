define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/room-layout-grid-item'
], ($, _, Backbone, roomLayoutGridItemTemplate) ->

  class RoomLayoutGridItemView extends Backbone.View

    className: 'room-layout-grid-item'

    initialize: ->
      @

    render: ->
      template = roomLayoutGridItemTemplate @model.toJSON()
      @$el.html template
      @

