define [
  'jquery'
  'underscore'
  'backbone'
], ($, _, Backbone) ->

  class ProjectModel extends Backbone.Model

    urlRoot : '/projects'

