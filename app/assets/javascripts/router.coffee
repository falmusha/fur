define [
  'jquery',
  'underscore',
  'backbone',
], ($, _, Backbone) ->

  class window.FurRouter extends Backbone.Router

    routes:
      '':'initFur'

    initFur: ->
      alert 'Should be rendering stuff'

  initialize =  ->
    furRouter = new FurRouter()
    Backbone.history.start()

  return initialize: initialize
