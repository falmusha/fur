define [
  'jquery'
  'underscore'
  'backbone'

  'hbs!templates/room-layout-navbar'
], (
  $,
  _,
  Backbone,

  roomLayoutNavbarTemplate
) ->

  class RoomLayoutNavbarView extends Backbone.View

    className: 'row room-layout-navbar'

    initialize: ->
      @render()

    render: ->
      template = roomLayoutNavbarTemplate {}
      @$el.html template
      @
