define [
  'jquery'
  'underscore'
  'backbone'

  'views/new-room-layout'
  'views/room-layout-grid'
  'collections/room-layout'
], (
  $,
  _,
  Backbone,
  NewRoomLayoutView,
  RoomLayoutGridView,
  RoomLayoutCollection
) ->

  class MainBodyView extends Backbone.View

    className: 'col-md-10 main-body'

    initialize: ->
      @render()

    render: ->
      @renderRoomLayoutGridNavbar()
      @renderRoomLayoutGrid()
      #@renderNewRoomLayout()
      @

    renderRoomLayoutGridNavbar: ->
      newRoomLayoutView = new NewRoomLayoutView()
      injectView newRoomLayoutView.el, @el

    renderNewRoomLayout: ->
      newRoomLayoutView = new NewRoomLayoutView()
      injectView newRoomLayoutView.el, @el

    renderRoomLayoutGrid: ->
      roomLayoutGridView = new RoomLayoutGridView(
        collection: new RoomLayoutCollection()
      )
      injectView roomLayoutGridView.el, @el
