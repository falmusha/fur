define [
  'jquery'
  'underscore'
  'backbone'
  'views/room-layout-grid-item'
  'hbs!templates/room-layout-grid'
], ($, _, Backbone, RoomLayoutGridItemView, roomLayoutGridTemplate) ->

  class RoomLayoutGridView extends Backbone.View

    className: 'col-3-4 \
                grid \
                grid-pad \
                room-layout-grid'

    initialize: ->
      @collection.fetch success: => @render()

    render: ->
      template = roomLayoutGridTemplate {}
      @$el.html template
      @renderItems()
      @

    renderItems: ->
      _.each @collection.models, (model) =>
        roomLayoutGridItemView = new RoomLayoutGridItemView(
          model: model
        )
        injectView roomLayoutGridItemView.render().el, @el

