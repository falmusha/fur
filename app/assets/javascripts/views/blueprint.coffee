define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/blueprint'
], ($, _, Backbone, blueprintTemplate) ->

  class window.BlueprintView extends Backbone.View

    initialize: ->
      @render()

    render: ->
      template = blueprintTemplate name: 'sara', image_url: 'assets/image.jpg'
      @$el.html template
      @

