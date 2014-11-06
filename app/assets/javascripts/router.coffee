define [
  'jquery'
  'underscore'
  'backbone'
  'views/blueprint'
], ($, _, Backbone, BlueprintView) ->

  class window.FurRouter extends Backbone.Router

    routes:
      '(/)':'index'

    index: ->
      blueprintView = new BlueprintView()
      blueprintView.render()

  initialize =  ->
    furRouter = new FurRouter()
    Backbone.history.start()

  return initialize: initialize
