define [
  'jquery'
  'underscore'
  'backbone'
  'hbs!templates/main-grid'
], ($, _, Backbone, mainGridTemplate) ->

  class MainGridView extends Backbone.View

    className: 'grid grid-pad'

    initialize: ->
      @render()

    render: ->
      template = mainGridTemplate {}
      @$el.html template
      @

