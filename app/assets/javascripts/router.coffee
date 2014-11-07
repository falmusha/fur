define [
  'jquery'
  'underscore'
  'backbone'
  'collections/room-layout'
  'views/room-layout-grid'
], ($, _, Backbone, RoomLayoutCollection, RoomLayoutGridView) ->

  class FurRouter extends Backbone.Router

    routes:
      '(/)':'index'


    index: ->
      @createGrid()

    createGrid: ->
      roomLayoutGridView = new RoomLayoutGridView(
        collection: new RoomLayoutCollection()
      )
      injectView roomLayoutGridView.el, 'body'


  initialize =  ->
    window.injectView = (c, p) ->
      $(p).append c
    furRouter = new FurRouter()
    Backbone.history.start()

  return initialize: initialize
