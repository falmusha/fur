require.config
  baseUrl: 'assets'
  paths:
    jquery: 'jquery/dist/jquery.min'
    underscore: 'underscore/underscore'
    backbone: 'backbone/backbone'
    hbs: 'require-handlebars-plugin/hbs'

require ['fur'], (Fur) ->
    Fur.initialize()
