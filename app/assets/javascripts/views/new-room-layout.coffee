define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/new-room-layout'
], ($, _, Backbone, newRoomLayoutTemplate) ->

  class NewRoomLayoutView extends Backbone.View

    className: 'new-room-layout'

    events:
      'submit form':'submit'

    initialize: ->
      @render()

    render: ->
      template = newRoomLayoutTemplate
      @$el.html template
      @

    submit: ->
      $.post '/room_layouts', @$('form').serialize()
      false

