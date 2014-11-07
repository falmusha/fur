define [
  'jquery'
  'underscore'
  'backbone'
  'models/room-layout'
], ($, _, Backbone, RoomLayoutModel) ->

  class window.RoomLayoutCollection extends Backbone.Collection

    url: '/room_layouts'
    model: RoomLayoutModel
