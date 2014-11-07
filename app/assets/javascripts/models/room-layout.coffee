define [
  'jquery'
  'underscore'
  'backbone'
], ($, _, Backbone) ->

  class RoomLayoutModel extends Backbone.Model

    urlRoot : '/room_layouts'

