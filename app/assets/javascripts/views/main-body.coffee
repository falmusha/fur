define [
  'jquery'
  'underscore'
  'backbone'

  'views/room-layout-grid'
  'collections/room-layout'
], (
  $,
  _,
  Backbone,
  RoomLayoutGridView,
  RoomLayoutCollection
) ->

  class MainBodyView extends Backbone.View

    className: 'col-md-10 main-body'

    initialize: ->
      @render()

    render: ->
      @renderRoomLayoutGrid()
      @

    renderRoomLayoutGrid: ->
      roomLayoutGridView = new RoomLayoutGridView(
        collection: new RoomLayoutCollection()
      )
      injectView roomLayoutGridView.el, @el
