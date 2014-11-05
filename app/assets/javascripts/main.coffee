require.config
  baseUrl: 'assets'
  paths:
    jquery: 'jquery/dist/jquery.min'
    underscore: 'underscore/underscore'
    backbone: 'backbone/backbone'

require ['fur'], (Fur) ->
    Fur.initialize()
