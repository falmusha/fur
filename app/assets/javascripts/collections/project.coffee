define [
  'jquery'
  'underscore'
  'backbone'
  'models/project'
], ($, _, Backbone, ProjectModel) ->

  class ProjectCollection extends Backbone.Collection

    url: '/projects'
    model: ProjectModel
