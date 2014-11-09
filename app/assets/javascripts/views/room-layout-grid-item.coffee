define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/room-layout-grid-item'
], ($, _, Backbone, roomLayoutGridItemTemplate) ->

  class RoomLayoutGridItemView extends Backbone.View

    className: 'col-1-8'

    initialize: ->
      @

    render: ->
      template = roomLayoutGridItemTemplate @model.toJSON()
      @$el.html template
      @

